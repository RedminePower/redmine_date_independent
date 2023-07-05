class DateIndependent < ActiveRecord::Base
  validates_presence_of :title
  validates_presence_of :project_pattern

  validate :valid_action

  def valid_action
    
    # プロジェクトパターンが設定されていた場合
    if project_pattern.present?
      begin
        Regexp.compile(project_pattern)
      rescue
        errors.add(:project_pattern, :invalid)
      end
    end

    # 連動させるステータスのパターンが設定されていた場合
    if calculate_status_pattern.present?
      begin
        Regexp.compile(calculate_status_pattern)
      rescue
        errors.add(:calculate_status_pattern, :invalid)
      end
    end

  end

  def available?
    is_enabled 
  end

end
