class Api::PokemonsController < ApplicationController
    def index 
        @pokemons = Pokemon.all 
        render "api/pokemons/index"

    end

    def create
        @pokemon= Pokemon.new(pokemon_params);
        if @pokemon.save! 
            render "api/pokemons/show"
        else
            render json: @pokemon.errors.full_messages, status: 422
        end

    end

    def show
        @pokemon= Pokemon.find(params[:id])
        if @pokemon 
            render "api/pokemons/show"
        end

    end

    def update
        @pokemon= Pokemon.find(params[:id])
        if @pokemon
            render "api/pokemons/edit"
        else
            render json: @pokemon.errors.full_messages, status: 422
        end

    end

    def types
        render json: Pokemon::TYPES;
    end

    def pokemon_params
        params.require(:pokemon).permit(number,name,attack,defense,poke_type,image_url)
    end
end
