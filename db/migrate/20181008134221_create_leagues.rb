class CreateLeagues < ActiveRecord::Migration[5.1]
  def change
    create_table :leagues do |t|

    	t.string :league_name
      t.integer :clients
    	t.string :start_date
    	t.string :end_date
    	t.string :pass
    	
      t.timestamps
    end
  end
end
