class Group < ActiveRecord::Base
  belongs_to :team1, :class_name => 'Team'
  belongs_to :team2, :class_name => 'Team'
  validates :name_group presence: true, uniqueness: true, lenght:{maximum: 1}
end
