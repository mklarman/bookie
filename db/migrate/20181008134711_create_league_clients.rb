class CreateLeagueClients < ActiveRecord::Migration[5.1]
  def change
    create_table :league_clients do |t|

    	t.string :league_id
    	t.string :user_id
    	t.string :league_name
    	t.string :stakes
    	t.string :bet_types
      t.string :wager_limit
      t.string :sports

      t.timestamps
    end
  end
end
