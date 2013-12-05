class Activity < ActiveRecord::Base

    validates :name, uniqueness: true, presence: true

    has_many :entries

    before_save :downcase_name

    def downcase_name
        name = name.to_s.downcase
    end

end
