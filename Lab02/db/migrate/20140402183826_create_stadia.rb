class CreateStadia < ActiveRecord::Migration
  def change
    create_table :stadia do |t|
      t.string :name_stadium
      t.string :city
      t.date :date_build
      t.integer :max_capacity
      t.string :photo

      t.timestamps
    end
  end
end
