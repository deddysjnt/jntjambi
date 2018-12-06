class DpoutgoingsController < ApplicationController
  before_action :set_dpoutgoing, only: [:show, :edit, :update, :destroy]

  # GET /dpoutgoings
  # GET /dpoutgoings.json
  def index
    @dpoutgoings = Dpoutgoing.all
  end

  # GET /dpoutgoings/1
  # GET /dpoutgoings/1.json
  def show
  end

  # GET /dpoutgoings/new
  def new
    @dpoutgoing = Dpoutgoing.new
  end

  # GET /dpoutgoings/1/edit
  def edit
  end

  # POST /dpoutgoings
  # POST /dpoutgoings.json
  def create
    @dpoutgoing = Dpoutgoing.new(dpoutgoing_params)

    respond_to do |format|
      if @dpoutgoing.save
        format.html { redirect_to @dpoutgoing, notice: 'Dpoutgoing was successfully created.' }
        format.json { render :show, status: :created, location: @dpoutgoing }
      else
        format.html { render :new }
        format.json { render json: @dpoutgoing.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dpoutgoings/1
  # PATCH/PUT /dpoutgoings/1.json
  def update
    respond_to do |format|
      if @dpoutgoing.update(dpoutgoing_params)
        format.html { redirect_to @dpoutgoing, notice: 'Dpoutgoing was successfully updated.' }
        format.json { render :show, status: :ok, location: @dpoutgoing }
      else
        format.html { render :edit }
        format.json { render json: @dpoutgoing.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dpoutgoings/1
  # DELETE /dpoutgoings/1.json
  def destroy
    @dpoutgoing.destroy
    respond_to do |format|
      format.html { redirect_to dpoutgoings_url, notice: 'Dpoutgoing was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dpoutgoing
      @dpoutgoing = Dpoutgoing.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dpoutgoing_params
      params.require(:dpoutgoing).permit(:nomor, :karyawan_id, :droppoint_id, :tanggal, :transaksi, :awb_total, :uang_masuk, :perkiraan_id, :awb_ppcash_manual, :awb_dfod_manual, :awb_cod_manual, :awb_pppm_manual, :awb_ppcash_online, :awb_dfod_online, :awb_cod_online, :awb_pppm_online, :nilai_ppcash_manual, :nilai_dfod_manual, :nilai_cod_manual, :nilai_pppm_manual, :nilai_ppcash_online, :nilai_dfod_online, :nilai_cod_online, :nilai_pppm_online, :description, :tanggal_approve, :user_approve, :user_add, :user_edit, :ip_address, :flag)
    end
end
