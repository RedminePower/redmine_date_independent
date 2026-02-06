# frozen_string_literal: true

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
