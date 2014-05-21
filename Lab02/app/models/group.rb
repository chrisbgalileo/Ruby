class Group < ActiveRecord::Base
	has_many :participations
	has_many :teams, :through => :participations
	
	validates :name_group, presence: true, uniqueness: true, length:{maximum: 1}
end
