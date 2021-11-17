class PowersController < ApplicationController
  def index
    if params[:query].present?
      @powers = Power.where("name ILIKE ?", "%#{params[:query]}%")
    else
      @powers = Power.all
    end  
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
    @booking = Booking.new
  end

  def destroy
    @power = Power.find(params[:id])
    @power.destroy
    redirect_to my_powers_path
  end

  def edit
    @power = Power.find(params[:id])
  end

  def update
    @power = Power.find(params[:id])
    @power.update(power_params)
    if @power.save!
      redirect_to my_powers_path
    end
  end

  private

  def power_params
    params.require(:power).permit(:name, :element, :power_type, :description, :price, :location, :example_hero)
  end

end
