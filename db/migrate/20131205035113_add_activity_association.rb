class AddActivityAssociation < ActiveRecord::Migration
  def change
    add_column :entries, :activity_id, :integer
  end
end
