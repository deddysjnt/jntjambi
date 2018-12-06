class PkhdsController < ApplicationController
  before_action :set_pkhd, only: [:show, :edit, :update, :destroy]

  # GET /pkhds
  # GET /pkhds.json
  def index
    @pkhds = Pkhd.all
  end

  # GET /pkhds/1
  # GET /pkhds/1.json
  def show
  end

  # GET /pkhds/new
  def new
    @pkhd = Pkhd.new
    @pkhd.pkdts.build
  end

  # GET /pkhds/1/edit
  def edit
    @pkhd.pkdts.build
  end

  # POST /pkhds
  # POST /pkhds.json
  def create
    @pkhd = Pkhd.new(pkhd_params)

    respond_to do |format|
      if @pkhd.save
        format.html { redirect_to edit_pkhd_path(@pkhd), notice: 'Pemakaian Berhasil di Buat.' }
        #format.json { render :show, status: :created, location: @pkhd }
      else
        format.html { render :new }
        format.json { render json: @pkhd.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pkhds/1
  # PATCH/PUT /pkhds/1.json
  def update
    respond_to do |format|
      if @pkhd.update(pkhd_params)
        format.html { redirect_to edit_pkhd_path(@pkhd), notice: 'Pemakaian was successfully updated.' }
        #format.json { render :show, status: :ok, location: @pkhd }
      else
        format.html { render :edit }
        format.json { render json: @pkhd.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pkhds/1
  # DELETE /pkhds/1.json
  def destroy
    @pkhd.destroy
    respond_to do |format|
      format.html { redirect_to pkhds_url, notice: 'Pkhd was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pkhd
      @pkhd = Pkhd.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pkhd_params
      #params.require(:pkhd).permit(:droppoint_id, :nomor, :no_ref, :tanggal, :description, :tanggal_approve, :user_approve, :user_add, :user_edit, :ip_address, :flag, pkdts_attributes: [:id, :product_id, :keterangan, :_destroy])
      params.require(:pkhd).permit(:droppoint_id, :nomor, :no_ref, :tanggal, :description, :tanggal_approve, :user_approve, :user_add, :user_edit, :ip_address, :flag, pkdts_attributes: Pkdt.attribute_names.map(&:to_sym).push(:_destroy))
    end
end
