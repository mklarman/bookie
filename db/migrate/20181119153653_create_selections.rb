class CreateSelections < ActiveRecord::Migration[5.1]
  def change
    create_table :selections do |t|

    	t.string :date
    	t.string :user_id
		t.string :pool_id
		t.string :selection
		t.string :points
		t.string :result

      t.timestamps
    end
  end
end
