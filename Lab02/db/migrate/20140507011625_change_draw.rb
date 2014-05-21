class ChangeDraw < ActiveRecord::Migration
  def change
	rename_column :matches, :draw? , :draw 
  end
end
