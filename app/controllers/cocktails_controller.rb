class CocktailsController < ApplicationController
before_action :set_a_cocktail, only: [:destroy, :show, :edit, :update]

  def show
    # @ingredients = @cocktail.ingredients
    @doses = Dose.where(cocktail: @cocktail)
  end

  def new
    @cocktail = Cocktail.new
  end

  def index
    @cocktails = Cocktail.all
  end

  def edit
  end

  def create
    @cocktail = Cocktail.new(cocktails_params)
    if @cocktail.save
      redirect_to root_path, notice: "Le cocktail #{@cocktail.name} a été ajouté."
    else
      render :new
    end
  end

  def destroy
    temp = @cocktail.name
    @cocktail.destroy
    redirect_to root_path, notice: "Le cocktail #{temp} a été supprimé."
  end

private

def set_a_cocktail
  @cocktail = Cocktail.find(params[:id])
end

def cocktails_params
  params.require(:cocktail).permit(:name, :photo)
end


end
