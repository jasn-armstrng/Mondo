class DishesController < ApplicationController
  def show
    @dish = Dish.find(params[:id])
    @cooked_dish = CookedDish.new
    # @favourites = Favourites.new
  end

  def ingredients
    # raise
    @dish = Dish.find(params[:dish_id])
  end

  private

  def dish_params
    params.require(:dish).permit(:title, :ingredients, :recipe, :prep_time, :dietary_filters, :average_rating)
  end
end
