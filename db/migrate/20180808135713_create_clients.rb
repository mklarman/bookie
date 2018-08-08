class CreateClients < ActiveRecord::Migration[5.1]
  def change
    create_table :clients do |t|

    	t.integer :user_id
    	t.string :first_name
    	t.string :last_name
    	t.string :type
    	t.string :stakes
    	t.string :quantity

      t.timestamps
    end
  end
end
