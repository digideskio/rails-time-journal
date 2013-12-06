class AddUserIds < ActiveRecord::Migration
  def change
    add_reference :entries, :user, index: true
    add_reference :activities, :user, index: true
    add_reference :days, :user, index: true
  end
end
