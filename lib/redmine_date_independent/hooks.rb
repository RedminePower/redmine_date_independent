module RedmineDateIndependent
  class Hooks < Redmine::Hook::ViewListener

    # 全ビューのベースHTMLを作成時
    def view_layouts_base_html_head(context = { })
        stylesheet_link_tag('date_independent.css', :plugin => 'redmine_date_independent')
    end

  end
end