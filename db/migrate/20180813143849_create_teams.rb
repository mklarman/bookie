class CreateTeams < ActiveRecord::Migration[5.1]
  def change
    create_table :teams do |t|

      t.string :date
    	t.string :name
    	t.string :sport
    	t.string :spread
      t.string :opp
    	t.string :total
      t.string :sides_line
      t.string :total_line_over
      t.string :total_line_under
      t.string :score, default: 0
      t.string :opp_score, default: 0
      t.string :total_points, default: 0
    	t.string :spread_result, default: 0
      t.string :total_result, default: 0     
      t.string :display, default: "off"
      


      t.timestamps
    end
  end
end
