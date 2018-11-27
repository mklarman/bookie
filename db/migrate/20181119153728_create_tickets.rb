class CreateTickets < ActiveRecord::Migration[5.1]
  def change
    create_table :tickets do |t|

    	t.string :date
		t.string :player_id
		t.string :name
		t.string :sport
		t.string :def_rating
		t.string :pitcher
		t.string :score

      t.timestamps
    end
  end
end
