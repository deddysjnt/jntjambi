class KendaraansController < ApplicationController
	#before_action :authenticate_user!, only: [:new, :create, :edit , :update]

	def index
		if params[:term].present?
			@kendaraans = Kendaraan.search(params[:term])
		else
			@kendaraans = Kendaraan.page(params[:page]).order(:nopol)
		end
		respond_to do |format|
			format.html
			format.json { render json: @kendaraans.map({|t| { :label => t.nopol, :id => t.id)}} }
		end
	end

	def show
		@kendaraan = Kendaraan.find(params[:id])
		if @kendaraan.nil?
			flash.now[:alert] = "Data tidak ditemukan"
    		render action: "index"
  		end
	end

	def new
		@kendaraan = Kendaraan.new
	end

	def create
		#render plain: params.inspect
		
		@kendaraan = Kendaraan.new(field_update)
		set_user_add(@kendaraan)
		if @kendaraan.save
		   redirect_to kendaraans_path, notice: "Data Berhasil di Tambah"
		else
			#render plain: field_update
			render 'new'
		end
	end

	def edit
		@kendaraan = Kendaraan.find(params[:id])
	end
	def update
		@kendaraan = Kendaraan.find(params[:id])
		set_user_edit(@kendaraan)
	    if @kendaraan.update(field_update)
	      redirect_to kendaraans_path, notice: "Data Berhasil di Ubah"
	    else
	      render 'edit'
	    end
	end
	
	def destroy
		@kendaraan = Kendaraan.find(params[:id])
    	@kendaraan.destroy
    	redirect_to kendaraans_path, notice: "Data Berhasil di Dihapus"
	end

	private

	def field_update
		params.require(:kendaraan).permit(:nopol, :kode_aset, :lokasi, :lokasi_layanan, :parkir, :pemilik, :spec_mobil, :rute, :tahun, :ban_set, :tanggal_register, :tanggal_stnk, :tanggal_kir, :tanggal_pajak, :reminder_surat, :km_awal, :km_next_service, :reminder_service, :status, :sopir_tetap, :flag)
	end

end