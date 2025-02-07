# このファイルを修正後に適用するためには、以下のコマンドを実行する。
#--------------------
# cd C:\Bitnami\redmine-4.2.3-1\apps\redmine\htdocs\plugins\redmine_date_independent
# bundle exec rake redmine:plugins:migrate NAME=redmine_date_independent RAILS_ENV=production
#--------------------
class AddCalculateStatusIdsToDateIndependents < ActiveRecord::Migration[5.2]
  def up
    add_column :date_independents, :calculate_status_ids, :text
  end
end
