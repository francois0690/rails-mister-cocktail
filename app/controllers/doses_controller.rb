class DosesController < ApplicationController
  before_action :set_a_dose, only: [:show, :edit, :update, :destroy]
  def show
  end

  def new
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose = Dose.new
  end

  def create
    p "-----------------------------------------------------"
    p params
    @dose = Dose.new(doses_params)
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose.cocktail = @cocktail
    @dose.save
    if @dose.save
      redirect_to cocktail_path(@cocktail), notice: "La dose létale a été ajoutée."
    else
      render :new
    end

  end


  def destroy
    @cocktail = @dose.cocktail_id
    @dose.destroy
    redirect_to cocktail_path(@cocktail), notice: "La dose à été supprimée"
  end


  def index
  end

  def edit
  end
end

private

def set_a_dose
    @dose = Dose.find(params[:id])
end

  # Only allow a list of trusted parameters through.
def doses_params
  params.require(:dose).permit(:description, :ingredient_id)
end
