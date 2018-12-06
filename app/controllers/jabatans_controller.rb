class JabatansController < ApplicationController
	#before_action :authenticate_user!, only: [:new, :create, :edit , :update]

	def index
		if params[:term].present?
			@jabatans = Jabatan.search(params[:term]).page(params[:page])
		else
			@jabatans = Jabatan.all.order(:nama_jabatan).page(params[:page])
		end
		respond_to do |format|
			format.html
			format.json {render json: @jabatans.map {|t| { :label => t.nama_jabatan, :id => t.id }} }
		end
	end
	def show
		@jabatan = Jabatan.find(params[:id])
		if @jabatan.nil?
			flash.now[:alert] = "Data tidak ditemukan"
    		render action: "index"
  		end
	end

	def new
		@jabatan = Jabatan.new
	end

	def create
		#render plain: params.inspect
		#render plain: field_update
		@jabatan = Jabatan.new(field_update)
		set_user_add(@jabatan)
		if @jabatan.save
		   redirect_to jabatans_path, notice: "Data Berhasil di Tambah"
		else
			render 'new'
		end
	end

	def edit
		@jabatan = Jabatan.find(params[:id])
	end
	def update
		@jabatan = Jabatan.find(params[:id])
		set_user_edit(@jabatan)
	    if @jabatan.update(field_update)
	      redirect_to jabatans_path, notice: "Data Berhasil di Ubah"
	    else
	      render 'edit'
	    end
	end
	
	def destroy
		@jabatan = Jabatan.find(params[:id])
    	@jabatan.destroy
    	redirect_to jabatans_path, notice: "Data Berhasil di Dihapus"
	end

	private

	def field_update
		params.require(:jabatan).permit(:jabatanpusat_id, :nama_jabatan, :nama_jabatan_pusat, :divisi_kerja, :gapok_training, :gapok_tetap, :tunjangan_jabatan, :tunjangan_masa_kerja, :claim_bbm_set, :claim_pulsa_limit_1bulan, :claim_service_limit_3bulan, :claim_service_limit_6bulan, :claim_service_limit_12bulan, :description)
	end

end