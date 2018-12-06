class GudangsController < ApplicationController
  before_action :set_gudang, only: [:show, :edit, :update, :destroy]

  # GET /gudangs
  # GET /gudangs.json
  def index
    @gudangs = Gudang.all
  end

  # GET /gudangs/1
  # GET /gudangs/1.json
  def show
  end

  # GET /gudangs/new
  def new
    @gudang = Gudang.new
  end

  # GET /gudangs/1/edit
  def edit
  end

  # POST /gudangs
  # POST /gudangs.json
  def create
    @gudang = Gudang.new(gudang_params)

    respond_to do |format|
      if @gudang.save
        format.html { redirect_to @gudang, notice: 'Gudang was successfully created.' }
        format.json { render :show, status: :created, location: @gudang }
      else
        format.html { render :new }
        format.json { render json: @gudang.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /gudangs/1
  # PATCH/PUT /gudangs/1.json
  def update
    respond_to do |format|
      if @gudang.update(gudang_params)
        format.html { redirect_to @gudang, notice: 'Gudang was successfully updated.' }
        format.json { render :show, status: :ok, location: @gudang }
      else
        format.html { render :edit }
        format.json { render json: @gudang.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gudangs/1
  # DELETE /gudangs/1.json
  def destroy
    @gudang.destroy
    respond_to do |format|
      format.html { redirect_to gudangs_url, notice: 'Gudang was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gudang
      @gudang = Gudang.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def gudang_params
      params.require(:gudang).permit(:droppoint, :nama_gudang, :area_layanan, :kota, :kecamatan, :alamat, :no_telp, :mobile_phone, :contact, :email)
    end
end
