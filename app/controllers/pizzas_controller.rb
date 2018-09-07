class PizzasController < ApplicationController

  def new
    @pizza = Pizza.new
  end

  def create
    @pizzeria = params[:pizzeria_id]
    @pizza = Pizza.create(pizza_params)
    if @pizza.valid?
      redirect_to new_pizzeria_pizza_path(@pizza)
    else
      render:new
    end
  end

  def show
    @pizza = Pizza.find(params[:id])
  end

  private

  def pizza_params
    params.require(:pizza).permit(:name, :description, :pizzeria_id)
  end


end#end of class
