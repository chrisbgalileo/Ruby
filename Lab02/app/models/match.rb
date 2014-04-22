class Match < ActiveRecord::Base
  belongs_to :local_team, :class_name => 'Team'
  belongs_to :visit_team, :class_name => 'Team'
  belongs_to :winer, :class_name => 'Team'
  belongs_to :loser, :class_name => 'Team'
  belongs_to :group, :class_name => 'Group'
  belongs_to :stadium, :class_name => 'Stadium'
  
  validates :date_game, presence: true 
  validates :phase, presence: true 
  validates :status, presence: true 
  validates :local_team, presence: true 
  validates :visit_team, presence: true 
  validates :score, presence: true, format: /\A ( (\d)+-(\d)+ ) \z/i 	

  validate :is_draw?
  def is_draw?
	array_score = score.split("-")
	if(array_score[0] == array_score[1])
		if(draw? == false) 
			errors.add(:draw?, "must be true")
		end
	end
  end		
	
  validates :date_game, uniqueness: { scope: :stadium }

  validate :different_teams
  def different_teams
	if(local_team == visit_team)
		error.add(:local_team, :visit_team, "must ve different")
	end
  end
	
  validates :local_team, uniqueness: { scope: :date_game }		
  validates :visit_team, uniqueness: { scope: :date_game }		

  validates :phases, inclusion: ["Grupos","Octavos de final","Cuartos de final","Semifinales","Final"]
  validates :status, inclusion: ["Por jugar", "En juego", "Finalizado"]
   
end
