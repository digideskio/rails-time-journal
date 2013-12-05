class EntryActivityName < ActiveRecord::Migration
  change_table :entries do |t|
    t.rename :activity, :activity_name
  end
end
