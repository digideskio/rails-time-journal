class Activity < ActiveRecord::Base

    validates :name, uniqueness: true

    has_many :entry

    before_save do |activity| 
        activity.name = activity.name.downcase 
    end

end
