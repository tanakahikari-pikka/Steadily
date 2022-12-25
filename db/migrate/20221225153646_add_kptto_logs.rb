class AddKpttoLogs < ActiveRecord::Migration[7.0]
  def change
    add_column :logs, :keep, :string
    add_column :logs, :problems, :string
    add_column :logs, :try, :string
  end
end
