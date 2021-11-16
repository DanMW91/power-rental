class PowersController < ApplicationController
  def index
    @powers = Power.all
  end

  def new
    @power = Power.new
  end

  def create
    # power = Power.new(power_params)
    # current_user.id
  end

  def destroy
  end

  def edit
  end

  def update
  end

  private

  def power_params
    # params.require(:power).permit(:name, :element, :power_type, :price, :location, :example_hero)
  end

end
