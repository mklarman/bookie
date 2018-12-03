class CreateTickets < ActiveRecord::Migration[5.1]
  def change
    create_table :tickets do |t|

    	t.string :date
		t.string :player_id
		t.string :name
		t.string :sport
		t.string :started, default: false
		t.string :score
		t.string :updated, default: false


      t.timestamps
    end
  end
end
