require_dependency 'issue'

module RedmineDateIndependent
  module IssuePatch

    def soonest_start(reload=false)
      if @soonest_start.nil? || reload
        relations_to.reload if reload
        dates = relations_to.collect{|relation| relation.successor_soonest_start}
        p = @parent_issue || parent
        if p && needs_derived
          dates << p.soonest_start
        end

        @soonest_start = dates.compact.max
      end
      @soonest_start
    end

    def dates_derived?
      !leaf? && needs_derived
    end

    def needs_derived
      # 全体の設定で「子チケットの値から算出」が選択されていなかったら連動しない
      if Setting.parent_issue_dates != 'derived'
        return false
      end

      settings = DateIndependent.all.order(:id).select {|s| s.is_enabled && s.project_ids.include?(self.project.id) }
      # 「有効」かつ「対象プロジェクト」にチケットのプロジェクトを含む設定が無ければ連動させる
      if settings.empty?
        return true
      end

      date_independent = settings[0]
      # 「適用しないステータス」が設定されていなければ連動しない
      if date_independent.calculate_status_pattern.empty?
        return false
      end

      status = IssueStatus.find_by_id(status_id)
      # チケットのステータスが「適用しないステータス」と一致していたら連動させる
      if status.name =~ Regexp.new(date_independent.calculate_status_pattern)
        return true
      else
        return false
      end
    end

  end
end
