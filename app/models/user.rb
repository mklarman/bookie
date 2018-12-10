class User < ApplicationRecord
	
	has_many :league_clients
	has_many :league_wagers
	has_many :selections
	has_many :secrets
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
