class GlpulsasController < ApplicationController
	#before_action :authenticate_user!, only: [:new, :create, :edit , :update]

	def index
		@glpulsas = Glpulsa.page(params[:page]).order(:tanggal)
	end

	def show
		@glpulsa = Glpulsa.find(params[:id])
		if @glpulsa.nil?
			flash.now[:alert] = "Data tidak ditemukan"
    		render action: "index"
  		end
	end

	def new
		@k1 = Karyawan.find(current_user.id)
		@glpulsa = Glpulsa.new(karyawan_id: current_user.id, mobile_phone: @k1.try(:mobile_phone) ,droppoint_id: @k1.try(:droppoint_id),tanggal: Time.zone.now ,biaya_pulsa: 100000)
	end

	def create
		#render plain: params.inspect
		@glpulsa = Glpulsa.new(field_update)
		set_user_add(@glpulsa)
		if @glpulsa.save
			redirect_to glpulsas_path, notice: "Data Berhasil di Tambah"
		else
			render plain: field_update
			render 'new'
		end
	end

	def edit
		@glpulsa = Glpulsa.find(params[:id])
	end
	def update
		@glpulsa = Glpulsa.find(params[:id])
		set_user_edit(@glpulsa)
	    if @glpulsa.update(field_update)
	      redirect_to glpulsas_path, notice: "Data Berhasil di Ubah"
	    else
	      render 'edit'
	    end
	end
	
	def destroy
		@glpulsa = Glpulsa.find(params[:id])
    	@glpulsa.destroy
    	redirect_to glpulsas_path, notice: "Data Berhasil di Dihapus"
	end

	private

	def field_update
		params.require(:glpulsa).permit(:glhd_id, :tanggal, :tanggal_isi, :karyawan_id, :jabatan_id, :droppoint_id, :perkiraan_id, :jenis_pulsa, :nominal, :blok_limit, :mobile_phone, :biaya_pulsa, :description, :nama_dp, :nama_karyawan, :nama_perkiraan, :flag)
	end

end