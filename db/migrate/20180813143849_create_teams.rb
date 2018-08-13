class CreateTeams < ActiveRecord::Migration[5.1]
  def change
    create_table :teams do |t|

    	t.string :name
    	t.string :sport
    	t.string :spread
    	t.string :total
    	t.string :date
    	t.string :spread_result
    	t.string :two_team_teaser_result
    	t.string :three_team_teaser_result
    	t.string :five_team_teaser_result


      t.timestamps
    end
  end
end
