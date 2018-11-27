class CreatePlayers < ActiveRecord::Migration[5.1]
  def change
    create_table :players do |t|

    	t.string :name
    	t.string :sport
    	t.string :team

      t.timestamps
    end
  end
end
