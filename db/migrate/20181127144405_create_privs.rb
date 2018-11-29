class CreatePrivs < ActiveRecord::Migration[5.1]
  def change
    create_table :privs do |t|

    	t.string :user_id
    	t.string :pass
    	t.string :date

      t.timestamps
    end
  end
end
