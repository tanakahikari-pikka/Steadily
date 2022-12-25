class ChangeStudyRecordFromLogs < ActiveRecord::Migration[7.0]
  def change
    change_column :logs, :study_record, :float
  end
end
