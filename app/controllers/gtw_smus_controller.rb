class GtwSmusController < ApplicationController
  before_action :set_gtw_smu, only: [:show, :edit, :update, :destroy]

  # GET /gtw_smus
  # GET /gtw_smus.json
  def index
    @gtw_smus = GtwSmu.all
  end

  # GET /gtw_smus/1
  # GET /gtw_smus/1.json
  def show
  end

  # GET /gtw_smus/new
  def new
    @gtw_smu = GtwSmu.new
  end

  # GET /gtw_smus/1/edit
  def edit
  end

  # POST /gtw_smus
  # POST /gtw_smus.json
  def create
    @gtw_smu = GtwSmu.new(gtw_smu_params)

    respond_to do |format|
      if @gtw_smu.save
        format.html { redirect_to @gtw_smu, notice: 'Gtw smu was successfully created.' }
        format.json { render :show, status: :created, location: @gtw_smu }
      else
        format.html { render :new }
        format.json { render json: @gtw_smu.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /gtw_smus/1
  # PATCH/PUT /gtw_smus/1.json
  def update
    respond_to do |format|
      if @gtw_smu.update(gtw_smu_params)
        format.html { redirect_to @gtw_smu, notice: 'Gtw smu was successfully updated.' }
        format.json { render :show, status: :ok, location: @gtw_smu }
      else
        format.html { render :edit }
        format.json { render json: @gtw_smu.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gtw_smus/1
  # DELETE /gtw_smus/1.json
  def destroy
    @gtw_smu.destroy
    respond_to do |format|
      format.html { redirect_to gtw_smus_url, notice: 'Gtw smu was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gtw_smu
      @gtw_smu = GtwSmu.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def gtw_smu_params
      params.require(:gtw_smu).permit(:kegiatan, :tanggal, :smu_id, :noref, :biaya_smu, :kasir_smu, :biaya_koor, :kasir_koor, :kg_smu, :kg_fisik, :kg_selisih, :bagging_smu, :bagging_fisik, :bagging_selisih, :maskapai, :kendaraan_id, :transporter_team, :description, :agent_id, :tanggal_smu, :terms, :tanggal_estimasi, :description, :tanggal_approve, :user_approve, :user_add, :user_edit, :ip_address, :flag)
    end
end
