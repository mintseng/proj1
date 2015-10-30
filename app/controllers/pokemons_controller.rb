class PokemonsController < ApplicationController

	def index
		@pokemons = Pokemon.all
	end

	def capture
		@poke = Pokemon.where(id:params[:id])[0]
		current_trainer.pokemons << @poke
		@poke.trainer = current_trainer
		redirect_to root_path
	end

	def damage
		@poke = Pokemon.where(id:params[:id])[0]
		@poke.health = @poke.health - 10
		puts @poke.health
		@poke.save
		id = @poke.trainer_id
		if @poke.health <= 0
			@poke.delete
		end
		redirect_to :back
		# redirect_to :controller => 'trainers', :id => id
	end

	def new
		@pokemons = Pokemon.new
	end

	def show
	end

	def create
		puts "hi"
		puts @params
		puts "hi2"
		@pokemon = Pokemon.new( name: params[:pokemon][:name], health: 100, level: 1, trainer: current_trainer)
		if not @pokemon.valid?
			flash[:error] = @pokemon.errors.full_messages.to_sentence
			redirect_to new_pokemon_path
		else
			@pokemon.save
			redirect_to trainer_path(id: current_trainer)
		end

	end

end
