class Entry < ActiveRecord::Base

    belongs_to :activity

    attr_accessor :activity_name

    before_save :create_activity_if_missing

    def create_activity_if_missing
        if activity_name.present?
            activity = Activity.find_or_create_by(name: self.activity_name)
            self.activity_id = activity.id
        end
    end

end
