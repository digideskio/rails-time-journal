class RemoveActivityNameFromEntryModel < ActiveRecord::Migration
  change_table :entries do |t|
    t.remove :activity_name
  end
end
