class CreateTeams < ActiveRecord::Migration[5.1]
  def change
    create_table :teams do |t|

      t.string :date
    	t.string :name
    	t.string :sport
    	t.string :spread
    	t.string :total
      t.string :sides_line
      t.string :total_line
      t.string :score
      t.string :opp_score
      t.string :total_points
    	t.string :spread_result
      t.string :total_result     
      t.string :display
      


      t.timestamps
    end
  end
end
