class Match < ActiveRecord::Base
	belongs_to :local_team, :class_name => Team
	belongs_to :visit_team, :class_name => Team
	belongs_to :winner, :class_name => Team
	belongs_to :looser, :class_name => Team
	belongs_to :group, :class_name => Group
	belongs_to :stadium, :class_name => Stadium	
  
	validates :date_game, presence: true 
	validates :phase, presence: true 
	validates :status, presence: true 
	validates :local_team, presence: true 
	validates :visit_team, presence: true 
	validates :score, presence: true, format: /((\d)+-(\d)+)/
	validates :stadium_id, presence: true   

	validate :no_draw
	def no_draw
		if(draw == false)
			if(winner == nil)
				errors.add(:winner, "must have a winner")
			end		
			if(loser == nil)
				errors.add(:loser, "must have a loser")
			end
		end
	end	
  
	validate :is_draw
	def is_draw
		array_score = score.split("-")
		if(array_score[0] == array_score[1])
			if(draw == false) 
				errors.add(:draw, "must be true")
			end	
		elsif(array_score[0] != array_score[1])
			if(draw == true)
				errors.add(:draw, "must be false")
			end	
		end
	end		
	
	validates :date_game, uniqueness: { scope: :stadium_id }

	validate :different_teams
	def different_teams
		if(local_team == visit_team)
			error.add(:local_team, :visit_team, "must be different")
		end
	end
	
	validates :local_team, uniqueness: { scope: :date_game }		
	validates :visit_team, uniqueness: { scope: :date_game }		

	validates :phase, inclusion: ["Grupos","Octavos de final","Cuartos de final","Semifinales","Final"]
	validates :status, inclusion: ["Por jugar", "En juego", "Finalizado"]
	
end
