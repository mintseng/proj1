class PokemonController < ApplicationController
	def capture
		@poke = Pokemon.where(id:params[:id])[0]
		current_trainer.pokemons << @poke
		@poke.trainer = current_trainer
		puts current_trainer.pokemons.length
		redirect_to :root
	end
end
