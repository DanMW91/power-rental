class PowersController < ApplicationController
  def index
    @powers = Power.all
  end

  def new
    @power = Power.new
  end

  def create
    @power = Power.new(power_params)
    @power.user = current_user

    if @power.save!
      redirect_to power_path(@power)
    else
      render :new
    end
    # @power = Power.new(power_params)
    # if @power.save!
    #   redirect_to power_path(@power)
    # else
    #   render :new
    # end
  end

  def my_powers
    @powers = current_user.powers
  end

  def show
    @power = Power.find(params[:id])
  end

  def destroy

  end

  def edit

  end

  def update

  end

  private

  def power_params
    params.require(:power).permit(:name, :element, :power_type, :price, :location, :example_hero)
  end

end
