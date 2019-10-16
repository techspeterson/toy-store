class ManufacturersController < ApplicationController
  before_action :set_manufacturer, only: [:show, :edit, :update, :destroy]

  def index
    @manufacturers = Manufacturer.all
  end

  def show
  end

  def new
    @manufacturer = Manufacturer.new
  end

  def edit
  end

  def create
    @manufacturer = Manufacturer.new(manufacturer_params)

    respond_to do |format|
      if @manufacturer.save
        format.html { redirect_to manufacturer_path(@manufacturer), notice: 'Manufacturer was created successfully.' }
        format.json { render :show, status: :created, location: @manufacturer }
      else
        format.html { render :new }
        format.json { render json: @manufacturer.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @manufacturer.update(manufacturer_params)
        format.html { redirect_to manufacturer_path(@manufacturer), notice: 'Manufacturer was updated successfully.' }
        format.json { render :show, status: :ok, location: @manufacturer }
      else
        format.html { render :edit }
        format.json { render json: @manufacturer.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @manufacturer.destroy
    respond_to do |format|
      format.html { redirect_to manufacturers_path, notice: "Manufacturer was deleted successfully." }
      format.json { head :no_content }
    end
  end

  private
    def set_manufacturer
      @manufacturer = Manufacturer.find(params[:id])
    end

    def manufacturer_params
      params.require(:manufacturer).permit(:name, :location)
    end
end
