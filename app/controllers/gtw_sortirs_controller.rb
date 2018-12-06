class GtwSortirsController < ApplicationController
  before_action :set_gtw_sortir, only: [:show, :edit, :update, :destroy]

  # GET /gtw_sortirs
  # GET /gtw_sortirs.json
  def index
    @gtw_sortirs = GtwSortir.all
  end

  # GET /gtw_sortirs/1
  # GET /gtw_sortirs/1.json
  def show
  end

  # GET /gtw_sortirs/new
  def new
    @gtw_sortir = GtwSortir.new
  end

  # GET /gtw_sortirs/1/edit
  def edit
  end

  # POST /gtw_sortirs
  # POST /gtw_sortirs.json
  def create
    @gtw_sortir = GtwSortir.new(gtw_sortir_params)

    respond_to do |format|
      if @gtw_sortir.save
        format.html { redirect_to @gtw_sortir, notice: 'Gtw sortir was successfully created.' }
        format.json { render :show, status: :created, location: @gtw_sortir }
      else
        format.html { render :new }
        format.json { render json: @gtw_sortir.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /gtw_sortirs/1
  # PATCH/PUT /gtw_sortirs/1.json
  def update
    respond_to do |format|
      if @gtw_sortir.update(gtw_sortir_params)
        format.html { redirect_to @gtw_sortir, notice: 'Gtw sortir was successfully updated.' }
        format.json { render :show, status: :ok, location: @gtw_sortir }
      else
        format.html { render :edit }
        format.json { render json: @gtw_sortir.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gtw_sortirs/1
  # DELETE /gtw_sortirs/1.json
  def destroy
    @gtw_sortir.destroy
    respond_to do |format|
      format.html { redirect_to gtw_sortirs_url, notice: 'Gtw sortir was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gtw_sortir
      @gtw_sortir = GtwSortir.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def gtw_sortir_params
      params.require(:gtw_sortir).permit(:kegiatan, :tanggal, :manifest_id, :bagging_id, :droppoint_asal, :kg_gtw, :awb_gtw, :kg_e3, :awb_e3, :kg_selisih_e3, :awb_selisih_e3, :fresh_paket, :agent_id, :droppoint_tujuan, :tanggal_dp, :awb_dp, :kg_dp, :awb_selisih_dp, :kg_selisih_dp, :gtw_team_kerja, :gtw_team_shift, :description, :tanggal_approve, :user_approve, :user_add, :user_edit, :ip_address, :flag)
    end
end
