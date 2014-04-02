class CreateMatches < ActiveRecord::Migration
  def change
    create_table :matches do |t|
      t.date :date_game
      t.string :phase
      t.string :status
      t.references :local_team, index: true
      t.references :visit_team, index: true
      t.string :score
      t.references :winer, index: true
      t.references :loser, index: true
      t.boolean :draw?
      t.references :group, index: true
      t.references :stadium, index: true

      t.timestamps
    end
  end
end
