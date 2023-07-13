class Api::ItemsController < ApplicationController
    def index{
        @items.all
        render "api/items/index"
    }
    
    def create{


    }
    def update{

    }

    def destroy{

    }

    def item_params{
        # params.require(:item).permit()
    }

    
end
