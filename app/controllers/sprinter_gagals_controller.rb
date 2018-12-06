class SprinterGagalsController < ApplicationController
  before_action :set_sprinter_gagal, only: [:show, :edit, :update, :destroy]

  # GET /sprinter_gagals
  # GET /sprinter_gagals.json
  def index
    @sprinter_gagals = SprinterGagal.all
  end

  # GET /sprinter_gagals/1
  # GET /sprinter_gagals/1.json
  def show
  end

  # GET /sprinter_gagals/new
  def new
    @sprinter_gagal = SprinterGagal.new
  end

  # GET /sprinter_gagals/1/edit
  def edit
  end

  # POST /sprinter_gagals
  # POST /sprinter_gagals.json
  def create
    @sprinter_gagal = SprinterGagal.new(sprinter_gagal_params)

    respond_to do |format|
      if @sprinter_gagal.save
        format.html { redirect_to @sprinter_gagal, notice: 'Sprinter gagal was successfully created.' }
        format.json { render :show, status: :created, location: @sprinter_gagal }
      else
        format.html { render :new }
        format.json { render json: @sprinter_gagal.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sprinter_gagals/1
  # PATCH/PUT /sprinter_gagals/1.json
  def update
    respond_to do |format|
      if @sprinter_gagal.update(sprinter_gagal_params)
        format.html { redirect_to @sprinter_gagal, notice: 'Sprinter gagal was successfully updated.' }
        format.json { render :show, status: :ok, location: @sprinter_gagal }
      else
        format.html { render :edit }
        format.json { render json: @sprinter_gagal.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sprinter_gagals/1
  # DELETE /sprinter_gagals/1.json
  def destroy
    @sprinter_gagal.destroy
    respond_to do |format|
      format.html { redirect_to sprinter_gagals_url, notice: 'Sprinter gagal was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sprinter_gagal
      @sprinter_gagal = SprinterGagal.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sprinter_gagal_params
      params.require(:sprinter_gagal).permit(:sprinter_kembali_id, :tanggal, :karyawan_id, :droppoint_id, :awb, :masalah, :paket, :description, :tanggal_approve, :user_approve, :user_add, :user_edit, :ip_address, :flag)
    end
end
