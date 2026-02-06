# frozen_string_literal: true

require_relative 'lib/redmine_date_independent/hooks'

Issue.prepend(RedmineDateIndependent::IssuePatch)

Redmine::Plugin.register :redmine_date_independent do
  name 'Redmine Date Independent plugin'
  author 'Redmine Power'
  description 'This plugin allows the start and due dates of parent issue to be set independently of child issues.'
  version '1.0.2'
  url 'https://github.com/RedminePower/redmine_date_independent'
  author_url 'https://www.redmine-power.com/'

  menu :admin_menu, :date_independents,
    { :controller => 'date_independents', :action => 'index' },
    :caption => :di_label_date_independent,
    :html => { :class => 'icon icon-date_independent'},
    :if => Proc.new { User.current.admin? }

end
