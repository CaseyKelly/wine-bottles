class ScotchBottlesController < ApplicationController
  before_action :set_scotch_bottle, only: [:show, :edit, :update, :destroy]
  before_action :set_user
  before_action :authenticate

  def index
    @scotch_bottles = @user.scotch_bottles
  end

  def show
  end

  def new
    @scotch_bottle = ScotchBottle.new
  end

  def edit
  end

  def create
    @scotch_bottle = ScotchBottle.new(scotch_bottle_params)
      if @scotch_bottle.save
        redirect_to user_scotch_bottles_path(@user), notice: 'Scotch bottle was successfully created.'
      else
        render :new
      end
  end

  def update
    if @scotch_bottle.update(scotch_bottle_params)
      redirect_to user_scotch_bottles_path(@user), notice: 'Scotch bottle was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @scotch_bottle.destroy
      redirect_to scotch_bottles_url, notice: 'Scotch bottle was successfully destroyed.'
  end

  private
    def set_scotch_bottle
      @scotch_bottle = ScotchBottle.find(params[:id])
    end

    def set_user
      @user = User.find_by(params[:current_user])
    end

    def scotch_bottle_params
      params.require(:scotch_bottle).permit(:name, :vintage, :notes, :location, :size, :quantity, :rating, :user_id)
    end
end
