class Trainer < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :pokemons

  def print
  	result = ""
  	pokemons.each do |poke| 
  		result = result + poke.name
  		result << "\r"
  		result << "\n"
  	end
  	result
  end
end
