class AddCategoryIdToLogs < ActiveRecord::Migration[7.0]
  def change
    add_column :logs, :category_id, :integer
  end
end
