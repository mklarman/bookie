class CreateGroups < ActiveRecord::Migration[5.1]
  def change
    create_table :groups do |t|

    	t.string :pool_id
    	t.string :date
    	t.string :player1
    	t.string :player2
    	t.string :player3
    	t.string :player4
    	t.string :player5

      t.timestamps
    end
  end
end
