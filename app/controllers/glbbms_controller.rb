class GlbbmsController < ApplicationController
	#before_action :authenticate_user!, only: [:new, :create, :edit , :update]

	def index
		@glbbms = Glbbm.page(params[:page]).order(:tanggal)
	end

	def show
		@glbbm = Glbbm.find(params[:id])
		if @glbbm.nil?
			flash.now[:alert] = "Data tidak ditemukan"
    		render action: "index"
  		end
	end

	def new
		@glbbm = Glbbm.new
	end

	def create
		#render plain: params.inspect
		
		@glbbm = Glbbm.new(field_update)
		set_user_add(@glbbm)
		if @glbbm.save
		   redirect_to glbbms_path, notice: "Data Berhasil di Tambah"
		else
			#render plain: field_update
			render 'new'
		end
	end

	def edit
		@glbbm = Glbbm.find(params[:id])
	end
	def update
		@glbbm = Glbbm.find(params[:id])
		set_user_edit(@glbbm)
	    if @glbbm.update(field_update)
	      redirect_to glbbms_path, notice: "Data Berhasil di Ubah"
	    else
	      render 'edit'
	    end
	end
	
	def destroy
		@glbbm = Glbbm.find(params[:id])
    	@glbbm.destroy
    	redirect_to glbbms_path, notice: "Data Berhasil di Dihapus"
	end

	private

	def field_update
		params.require(:glbbm).permit(:glhd_id, :tanggal, :karyawan_id, :droppoint_id, :kendaraan_id, :km_lama, :km_baru, :jenis_bbm, :liter, :biaya_bbm, :perkiraan_id, :flag, :description, :operator_id, :validator_id, :tanggal_validasi, :nopol, :nama_perkiraan, :nama_dp, :nama_karyawan)
	end

end