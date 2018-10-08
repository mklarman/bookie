class CreateLeagues < ActiveRecord::Migration[5.1]
  def change
    create_table :leagues do |t|

    	t.string :password
    	t.integer :clients
    	
      t.timestamps
    end
  end
end
