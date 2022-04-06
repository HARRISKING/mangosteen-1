class CreateRecords < ActiveRecord::Migration[7.0]
  def change
    create_table :records do |t|
      t.integer :amount, null: false
      t.integer :category, null: false, limit: 1
      t.integer :notes
      t.timestamps
    end
  end
end
