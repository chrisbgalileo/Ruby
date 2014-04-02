class CreateGroups < ActiveRecord::Migration
  def change
    create_table :groups do |t|
      t.string :name_group
      t.references :team1, index: true
      t.references :team2, index: true

      t.timestamps
    end
  end
end
