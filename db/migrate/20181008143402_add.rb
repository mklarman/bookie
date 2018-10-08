class Add < ActiveRecord::Migration[5.1]
  def change

  	add_column :leagues, :league_name, :string
  end
end
