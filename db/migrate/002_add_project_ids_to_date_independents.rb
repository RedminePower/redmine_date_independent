# frozen_string_literal: true

class AddProjectIdsToDateIndependents < ActiveRecord::Migration[5.2]
  def up
    add_column :date_independents, :project_ids, :text
  end
end
