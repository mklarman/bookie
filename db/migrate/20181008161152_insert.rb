class Insert < ActiveRecord::Migration[5.1]
  def change

  	add_column :leagues, :status, :string
  end
end
