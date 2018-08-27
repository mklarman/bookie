class CreateClients < ActiveRecord::Migration[5.1]
  def change
    create_table :clients do |t|

    	t.integer :user_id
    	t.string :first_name
    	t.string :last_name
      t.string :stakes
    	t.string :bet_types
      t.string :wager_limit
      t.string :sports


      t.timestamps
    end
  end
end
