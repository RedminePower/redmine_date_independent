# このファイルを修正後に適用するためには、以下のコマンドを実行する。
#--------------------
# cd C:\Bitnami\redmine-4.2.3-1\apps\redmine\htdocs\plugins\redmine_date_independent
# bundle exec rake redmine:plugins:migrate NAME=redmine_date_independent RAILS_ENV=production
#--------------------
class CreateDateIndependents < ActiveRecord::Migration[5.2]
  def change
    create_table :date_independents do |t|
      t.text :title
      t.boolean :is_enabled, :default => true
      t.text :project_pattern
      t.text :calculate_status_pattern
    end
  end
end
