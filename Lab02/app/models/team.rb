class Team < ActiveRecord::Base
	
	
	/belongs_to :group/
	has_one :participations
	has_one :groups, :through => :participations
	has_many :matches
	
	validates :name, presence: true, uniqueness: true, format: /(([a-z]|\s)+)/i 
	validates :coach, presence: true, uniqueness: true
	validates:flag, presence: true, format: URI:: regexp(%w(http https)) 
	validates:uniform, presence: true, format: URI:: regexp(%w(http https)) 
	validates:info, presence: true, length: {in: 15..200}
	
	
end
