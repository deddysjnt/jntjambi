class WareHousesController < ApplicationController
  before_action :set_ware_house, only: [:show, :edit, :update, :destroy]

  # GET /ware_houses
  # GET /ware_houses.json
  def index
    @ware_houses = WareHouse.all
  end

  # GET /ware_houses/1
  # GET /ware_houses/1.json
  def show
  end

  # GET /ware_houses/new
  def new
    @ware_house = WareHouse.new
  end

  # GET /ware_houses/1/edit
  def edit
  end

  # POST /ware_houses
  # POST /ware_houses.json
  def create
    @ware_house = WareHouse.new(ware_house_params)

    respond_to do |format|
      if @ware_house.save
        format.html { redirect_to @ware_house, notice: 'Ware house was successfully created.' }
        format.json { render :show, status: :created, location: @ware_house }
      else
        format.html { render :new }
        format.json { render json: @ware_house.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ware_houses/1
  # PATCH/PUT /ware_houses/1.json
  def update
    respond_to do |format|
      if @ware_house.update(ware_house_params)
        format.html { redirect_to @ware_house, notice: 'Ware house was successfully updated.' }
        format.json { render :show, status: :ok, location: @ware_house }
      else
        format.html { render :edit }
        format.json { render json: @ware_house.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ware_houses/1
  # DELETE /ware_houses/1.json
  def destroy
    @ware_house.destroy
    respond_to do |format|
      format.html { redirect_to ware_houses_url, notice: 'Ware house was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ware_house
      @ware_house = WareHouse.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ware_house_params
      params.require(:ware_house).permit(:product, :gudang, :qty_in, :qty_out, :open_disc, :harga_jual_grosir, :harga_jual_retail)
    end
end
