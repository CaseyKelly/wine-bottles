class WineBottlesController < ApplicationController
  before_action :set_wine_bottle, only: [:show, :edit, :update, :destroy]
  before_action :authenticate

  def index
    @wine_bottles = WineBottle.all
  end

  def show
  end

  def new
    @wine_bottle = WineBottle.new
  end

  def edit
  end

  def create
    @wine_bottle = WineBottle.new(wine_bottle_params)
    if @wine_bottle.save
      redirect_to @wine_bottle, notice: 'Wine bottle was successfully created.'
    else
      render :new
    end
  end

  def update
    if @wine_bottle.update(wine_bottle_params)
      redirect_to @wine_bottle, notice: 'Wine bottle was successfully updated.'
    else
      render :edit
    end
  end


  def destroy
    @wine_bottle.destroy
      redirect_to wine_bottles_url, notice: 'Wine bottle was successfully destroyed.'
  end

  private
    def set_wine_bottle
      @wine_bottle = WineBottle.find(params[:id])
    end

    def wine_bottle_params
      params.require(:wine_bottle).permit(:name, :style, :origin, :year, :size, :purchase_date, :notes, :rating)
    end
end
