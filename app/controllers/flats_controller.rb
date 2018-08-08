class FlatsController < ApplicationController
  before_action :find_flat, only: [:show, :edit, :update, :destroy]
  def index
    @flats = Flat.all
    @flat = Flat.new
  end

  def show
  end

  def new
  end

  def create
    @flat = Flat.new(flat_params)
    if @flat.save
      redirect_to flat_path(@flat)
    else
      @flats = Flat.all
      render :index
    end
  end

  def edit

  end

  def update

  end

  def destroy

  end

  private

  def find_flat
    @flat = Flat.find(params[:id])
  end

  def flat_params
    params.require(:flat).permit(:name, :address, :description, :price_per_night, :number_of_guests)
  end
end
