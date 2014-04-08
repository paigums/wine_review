class WinesController < ApplicationController
#	def index
#		@wines = Wine.all
#	end
	
#	def show
#		@wine = Wine.find(params[:id])
#	end
before_action :set_wine, only: [ :show, :edit, :update, :destroy ]


def index
@wines = Wine.all
end

def show
   #This is empty now @wine = Wine.find(params[:id])
end

def new
@wine = Wine.new
end

def create
	@wine = Wine.new(wine_params)
	if @wine.save
      redirect_to @wine
    else
      render :new
    end

end

def edit
   #This is empty now @wine = Wine.find(params[:id])
end


def update
#This is empty now @wine = Wine.find(params[:id])
	if @wine.update(wine_params)
	redirect_to @wine
    else
      render :new
    end

end

def destroy
#This is empty now @wine = Wine.find(params[:id])
@wine.destroy
redirect_to wines_url
end
 

private

def wine_params
params.require(:wine).permit(:name, :year, :winery, :country, :varietal)
end

def set_wine
@wine = Wine.find(params[:id])
end
 
end