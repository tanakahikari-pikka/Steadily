class ChangeKpttoLogs < ActiveRecord::Migration[7.0]
  def change
    remove_column :logs, :problems, :string
    add_column :logs, :problem, :string
  end
end
