class Match < ActiveRecord::Base
  belongs_to :local_team
  belongs_to :visit_team
  belongs_to :winer
  belongs_to :loser
  belongs_to :group
  belongs_to :stadium
end
