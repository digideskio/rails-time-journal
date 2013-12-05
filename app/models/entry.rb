class Entry < ActiveRecord::Base

    belongs_to :activity

    before_save do |entry|
        activity = Activity.find_or_create_by(name: entry.activity_name)
        entry.activity_id = activity.id
    end

end
