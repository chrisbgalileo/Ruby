class Team < ActiveRecord::Base
	validates :name, presence: true, uniqueness: true, format: /\A( ([a-z]|[A-Z]|\s])+ )\z/i 
	validates :coach, presence: true, uniqueness: true
	/Sera un url valido?(^$)|(^(http|https):\/\/[a-z0-9]+([\-\.]{1}[a-z0-9]+)*\.[a-z]{2,5}(([0-9]{1,5})?\/.*)?$)/ix 
	validates:flag, presence: true, format: /\A( ([a-z]|[A-Z]|\d|\s)+:([a-z]|[A-Z]|\d|\s)+ )\z/i
	validates:uniform, presence: true, format: /\A( ([a-z]|[A-Z]|\d|\s)+:([a-z]|[A-Z]|\d|\s)+ )\z/i
	validates:info, length: {in: 15..200}
end
