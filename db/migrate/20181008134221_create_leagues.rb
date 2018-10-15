class CreateLeagues < ActiveRecord::Migration[5.1]
  def change
    create_table :leagues do |t|

    	t.string :league_name
    	t.integer :clients
    	t.string :end_date
    	t.string :status
    	t.string :pass
    	
      t.timestamps
    end
  end
end
