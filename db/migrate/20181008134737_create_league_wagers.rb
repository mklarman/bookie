class CreateLeagueWagers < ActiveRecord::Migration[5.1]
  def change
    create_table :league_wagers do |t|

    	t.string :user_id
    	t.string :league_id
    	t.string :league_client_id
    	t.string :wager_type
    	t.integer :amount
    	t.string :team1
    	t.string :team2 
    	t.string :team3
    	t.string :team4
    	t.string :team5
    	t.string :spread1
    	t.string :spread2	
    	t.string :spread3
    	t.string :spread4
    	t.string :spread5
    	t.string :date, default: "00-00-00"
    	t.integer :net_result, default: 0
    	t.string :outcome, default: "none"
    	t.boolean :graded, default: false

      t.timestamps
    end
  end
end
