# frozen_string_literal: true

class AddCalculateStatusIdsToDateIndependents < ActiveRecord::Migration[5.2]
  def up
    add_column :date_independents, :calculate_status_ids, :text
  end
end
