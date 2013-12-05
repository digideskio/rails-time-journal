class CreateEntries < ActiveRecord::Migration
  def change
    create_table :entries do |t|
      t.string :activity
      t.integer :score
      t.float :hours
      t.date :date

      t.timestamps
    end
  end
end
