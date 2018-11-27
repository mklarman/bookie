class CreatePools < ActiveRecord::Migration[5.1]
  def change
    create_table :pools do |t|

    	t.string :pool_name
    	t.string :commish_id
    	t.string :sport
    	t.string :date
    	t.string :pass

      t.timestamps
    end
  end
end
