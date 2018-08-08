class CreateMatchups < ActiveRecord::Migration[5.1]
  def change
    create_table :matchups do |t|

    	t.string :date
    	t.string :sport
    	t.string :fav
    	t.string :dog
    	t.integer :fav_line
    	t.integer :dog_line
    	t.integer :total_points
    	t.integer :fav_score, default: 0
    	t.integer :dog_score, default: 0

      t.timestamps
    end
  end
end
