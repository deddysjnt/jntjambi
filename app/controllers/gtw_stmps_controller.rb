class GtwStmpsController < ApplicationController
  before_action :set_gtw_stmp, only: [:show, :edit, :update, :destroy]

  # GET /gtw_stmps
  # GET /gtw_stmps.json
  def index
    @gtw_stmps = GtwStmp.all
  end

  # GET /gtw_stmps/1
  # GET /gtw_stmps/1.json
  def show
  end

  # GET /gtw_stmps/new
  def new
    @gtw_stmp = GtwStmp.new
  end

  # GET /gtw_stmps/1/edit
  def edit
  end

  # POST /gtw_stmps
  # POST /gtw_stmps.json
  def create
    @gtw_stmp = GtwStmp.new(gtw_stmp_params)

    respond_to do |format|
      if @gtw_stmp.save
        format.html { redirect_to @gtw_stmp, notice: 'Gtw stmp was successfully created.' }
        format.json { render :show, status: :created, location: @gtw_stmp }
      else
        format.html { render :new }
        format.json { render json: @gtw_stmp.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /gtw_stmps/1
  # PATCH/PUT /gtw_stmps/1.json
  def update
    respond_to do |format|
      if @gtw_stmp.update(gtw_stmp_params)
        format.html { redirect_to @gtw_stmp, notice: 'Gtw stmp was successfully updated.' }
        format.json { render :show, status: :ok, location: @gtw_stmp }
      else
        format.html { render :edit }
        format.json { render json: @gtw_stmp.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gtw_stmps/1
  # DELETE /gtw_stmps/1.json
  def destroy
    @gtw_stmp.destroy
    respond_to do |format|
      format.html { redirect_to gtw_stmps_url, notice: 'Gtw stmp was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gtw_stmp
      @gtw_stmp = GtwStmp.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def gtw_stmp_params
      params.require(:gtw_stmp).permit(:kegiatan, :tanggal, :manifest_id, :noref, :qty_bagging_fisik, :kg_fisik, :awb_fisik, :qty_bagging_manifest, :kg_manisfet, :awb_manifest, :selisih_bagging, :selisih_kg, :selisih_awb, :fresh_paket, :agent_id, :droppoint_id, :diterima_dari, :diserahkan_oleh, :gtw_team_kerja, :gtw_team_shift, :kendaraan_id, :transporter_team, :description, :tanggal_approve, :user_approve, :user_add, :user_edit, :ip_address, :flag)
    end
end
