class UnpacksController < ApplicationController
  before_action :set_unpack, only: [:show, :edit, :update, :destroy]

  # GET /unpacks
  # GET /unpacks.json
  def index
    @unpacks = Unpack.all
  end

  # GET /unpacks/1
  # GET /unpacks/1.json
  def show
  end

  # GET /unpacks/new
  def new
    @unpack = Unpack.new
  end

  # GET /unpacks/1/edit
  def edit
  end

  # POST /unpacks
  # POST /unpacks.json
  def create
    @unpack = Unpack.new(unpack_params)

    respond_to do |format|
      if @unpack.save
        format.html { redirect_to @unpack, notice: 'Unpack was successfully created.' }
        format.json { render :show, status: :created, location: @unpack }
      else
        format.html { render :new }
        format.json { render json: @unpack.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /unpacks/1
  # PATCH/PUT /unpacks/1.json
  def update
    respond_to do |format|
      if @unpack.update(unpack_params)
        format.html { redirect_to @unpack, notice: 'Unpack was successfully updated.' }
        format.json { render :show, status: :ok, location: @unpack }
      else
        format.html { render :edit }
        format.json { render json: @unpack.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /unpacks/1
  # DELETE /unpacks/1.json
  def destroy
    @unpack.destroy
    respond_to do |format|
      format.html { redirect_to unpacks_url, notice: 'Unpack was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_unpack
      @unpack = Unpack.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def unpack_params
      params.require(:unpack).permit(:droppoint_id, :sumber, :tanggal, :manifest_id, :nomor_smu, :droppoint_asal, :agent_asal, :nomor_bagging, :kg_fisik, :awb_fisik, :kg_e3, :awb_e3, :fresh_paket, :team_kerja, :team_shift, :description, :tanggal_approve, :user_approve, :user_add, :user_edit, :ip_address, :flag)
    end
end
