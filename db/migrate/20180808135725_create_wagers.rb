class CreateWagers < ActiveRecord::Migration[5.1]
  def change
    create_table :wagers do |t|

    	t.integer :user_id
    	t.integer :client_id
    	t.string :wager_type
    	t.integer :amount
    	t.string :team1
    	t.string :team2, default: "team2"
    	t.string :team3, default: "team3"
    	t.string :team4, default: "team4"
    	t.string :team5, default: "team5"
    	t.integer :spread1
    	t.integer :spread2, default: 0	
    	t.integer :spread3, default: 0
    	t.integer :spread4, default: 0
    	t.integer :spread5, default: 0
    	t.string :date, default: "00-00-00"
    	t.integer :net_result, default: 0
    	t.string :outcome, default: "none"
    	t.boolean :graded, default: false

      t.timestamps
    end
  end
end
