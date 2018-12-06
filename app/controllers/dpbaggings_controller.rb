class DpbaggingsController < ApplicationController
  before_action :set_dpbagging, only: [:show, :edit, :update, :destroy]

  # GET /dpbaggings
  # GET /dpbaggings.json
  def index
    @dpbaggings = Dpbagging.all
  end

  # GET /dpbaggings/1
  # GET /dpbaggings/1.json
  def show
  end

  # GET /dpbaggings/new
  def new
    @dpbagging = Dpbagging.new
  end

  # GET /dpbaggings/1/edit
  def edit
  end

  # POST /dpbaggings
  # POST /dpbaggings.json
  def create
    @dpbagging = Dpbagging.new(dpbagging_params)

    respond_to do |format|
      if @dpbagging.save
        format.html { redirect_to @dpbagging, notice: 'Dpbagging was successfully created.' }
        format.json { render :show, status: :created, location: @dpbagging }
      else
        format.html { render :new }
        format.json { render json: @dpbagging.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dpbaggings/1
  # PATCH/PUT /dpbaggings/1.json
  def update
    respond_to do |format|
      if @dpbagging.update(dpbagging_params)
        format.html { redirect_to @dpbagging, notice: 'Dpbagging was successfully updated.' }
        format.json { render :show, status: :ok, location: @dpbagging }
      else
        format.html { render :edit }
        format.json { render json: @dpbagging.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dpbaggings/1
  # DELETE /dpbaggings/1.json
  def destroy
    @dpbagging.destroy
    respond_to do |format|
      format.html { redirect_to dpbaggings_url, notice: 'Dpbagging was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dpbagging
      @dpbagging = Dpbagging.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dpbagging_params
      params.require(:dpbagging).permit(:kegiatan, :tanggal, :bagging_id, :noref, :droppoint_asal, :kg_asal, :awb_asal, :tanggal_kirim, :manifest_id, :tanggal_terima, :droppoint_terima, :kg_terima, :awb_terima, :selisih_kg, :selisih_awb, :fresh_paket, :description, :tanggal_approve, :user_approve, :user_add, :user_edit, :ip_address, :flag)
    end
end
