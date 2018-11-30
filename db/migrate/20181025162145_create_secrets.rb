class CreateSecrets < ActiveRecord::Migration[5.1]
  def change
    create_table :secrets do |t|

    	t.string :user_id
    	t.string :kind
    	t.string :pass
    	t.string :date

      t.timestamps
    end
  end
end
