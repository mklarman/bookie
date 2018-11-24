class CreateSecrets < ActiveRecord::Migration[5.1]
  def change
    create_table :secrets do |t|

    	t.string :user_id
    	t.string :pass

      t.timestamps
    end
  end
end
