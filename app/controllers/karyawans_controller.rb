class KaryawansController < ApplicationController
	#before_action :authenticate_user!, only: [:new, :create, :edit , :update]

	def index
		if params[:term].present?
			@karyawans = Karyawan.search(params[:term]).page(params[:page])
		else
			@karyawans = Karyawan.order(:nama_karyawan).page(params[:page])
		end
		respond_to do |format|
			format.html
			format.json { render json: @karyawans.map{ |t| { :label => t.nama_karyawan, :nik => t.nik, :id => t.id, :droppoint_id => t.droppoint_id, :nama_dp => t.nama_dp, :kode_dp => t.kode_dp, :jabatan_id => t.jabatan_id, :nama_jabatan => t.nama_jabatan }} }
		end
	end

	def show
		@karyawan = Karyawan.find(params[:id])
		if @karyawan.nil?
			flash.now[:alert] = "Data tidak ditemukan"
    		render action: "index"
  		end
	end

	def new
		@karyawan = Karyawan.new
	end

	def create
		#render plain: params.inspect 
		#render plain: field_update
		@karyawan = Karyawan.new(field_update)
		set_user_add(@karyawan)
		if @karyawan.save
		   redirect_to karyawans_path, notice: "Data Berhasil di Tambah"
		else
			render 'new'
		end
	end

	def edit
		@karyawan = Karyawan.find(params[:id])
	end
	def update
		@karyawan = Karyawan.find(params[:id])
		set_user_edit(@karyawan)
	    if @karyawan.update(field_update)
	      redirect_to karyawans_path, notice: "Data Berhasil di Ubah"
	    else
	      render 'edit'
	    end
	end
	
	def destroy
		@karyawan = Karyawan.find(params[:id])
    	@karyawan.destroy
    	redirect_to karyawans_path, notice: "Data Berhasil di Dihapus"
	end

	private

	def field_update
		params.require(:karyawan).permit(:nama_karyawan, :nik, :ktp, :tanggal_lahir, :jenis_kelamin , :agama, :pendidikan, :keterampilan_khusus, :kota, :kecamatan, :alamat, :pos, :mobile_phone, :email, :lokasi_berkas, :refrensi, :bank, :norek, :url_foto, :jabatan_id, :droppoint_id, :jabatanpusat_id, :kasir_piutang, :kasir_kas, :kasir_bank, :status, :bpjs_tk, :bpjs_ks, :tanggal_masuk, :tanggal_mutasi, :tanggal_resign)
	end

end