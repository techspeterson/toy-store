class ToysController < ApplicationController
  before_action :set_toy, only: [:show, :edit, :update, :destroy]
  require 'date'

  def index
    @toys = Toy.order('name')
  end

  def show
    @user = User.find(@toy.user_id)
  end

  def new
    @toy = Toy.new
  end

  def edit
  end

  def create
    params = toy_params
    params[:date_posted] = Date.today
    @toy = Toy.new(params)

    respond_to do |format|
      if @toy.save
        format.html { redirect_to toy_path(@toy), notice: 'Toy was created successfully.' }
        format.json { render :show, status: :created, location: @toy }
      else
        format.html { render :new }
        format.json { render json: @toy.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @toy.update(toy_params)
        format.html { redirect_to toy_path(@toy), notice: 'Toy was updated successfully.' }
        format.json { render :show, status: :ok, location: @toy }
      else
        format.html { render :edit }
        format.json { render json: @toy.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @toy.destroy
    respond_to do |format|
      format.html { redirect_to toys_path, notice: "Toy was deleted successfully." }
      format.json { head :no_content }
    end
  end

  private
    def set_toy
      @toy = Toy.find(params[:id])
    end

    def toy_params
      params.require(:toy).permit(:name, :description, :user_id, :img_url)
    end
end
