class DosesController < ApplicationController

  def create
    # Add user input to empty dose object
    @dose = Dose.new(doses_params)
    # Get missing cocktail id from url params
    @cocktail = Cocktail.find(params[:cocktail_id])
    # Specify that the cocktail of the dose is the one we found
    @dose.cocktail = @cocktail
    if @dose.save
      redirect_to cocktail_path(@cocktail)
    else
      render "/cocktails/show"
    end
    # flash[:alert] = @dose.errors.full_messages unless @dose.save
    # redirect_to cocktail_path(@cocktail)
  end

  def destroy
    @dose = Dose.find(params[:id])
    @cocktail = @dose.cocktail
    @dose.destroy
    redirect_to cocktail_path(@cocktail)
  end

  private
    def doses_params
      params.require(:dose).permit(:description, :ingredient_id)
    end

end
