class PokemonController < ApplicationController
	def capture
		@poke = Pokemon.where(id:params:[:id])[0]
		current_trainer.pokemons << @poke
		@poke.trainer = current_trainer
		redirect_to :root
	end
end
