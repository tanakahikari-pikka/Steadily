class Log < ActiveRecord::Migration[7.0]
  def change
    create_table :logs do |t|
      t.string :title, null: false
      t.text :achieve, null: false
      t.integer :study_record, null:false
      t.timestamps
    end
  end
end
