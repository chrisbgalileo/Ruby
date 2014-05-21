class CreateParticipations < ActiveRecord::Migration
  def change
    create_table :participations do |t|
      t.references :team, index: true
      t.references :group, index: true
      t.integer :points
      t.integer :matches_played
      t.integer :wins
      t.integer :losses
      t.integer :draws
      t.integer :goals_scored
      t.integer :goals_recived

      t.timestamps
    end
  end
end
