class Change < ActiveRecord::Migration[5.1]
  def change

  	rename_column :leagues, :password, :pass
  end
end
