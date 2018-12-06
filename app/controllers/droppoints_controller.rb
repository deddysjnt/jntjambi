class DroppointsController < ApplicationController
	#before_action :authenticate_user!, only: [:new, :create, :edit , :update]

	def index
		if params[:term].present?
			@droppoints = Droppoint.search(params[:term]).page(params[:page])
		else
			@droppoints = Droppoint.order(:nama_dp).page(params[:page])
		end
		respond_to do |format|
			format.html
			format.json { render json: @droppoints.map{ |t| { :label => t.nama_dp, :kode_dp => t.kode_dp, :id => t.id }} }
		end
	end
	def show
		@droppoint = Droppoint.find(params[:id])
		if @droppoint.nil?
			flash.now[:alert] = "Data tidak ditemukan"
    		render action: "index"
  		end
	end

	def new
		@droppoint = Droppoint.new
		@perkiraans = Perkiraan.all_detail_account
	end

	def create
		#render plain: params.inspect
		#render plain: field_update
		@droppoint = Droppoint.new(field_update)
		set_user_add(@droppoint)
		if @droppoint.save
		   redirect_to droppoints_path, notice: "Data Berhasil di Tambah"
		else
			render 'new'
		end
	end

	def edit
		@droppoint = Droppoint.find(params[:id])
	end
	def update
		@droppoint = Droppoint.find(params[:id])
		set_user_edit(@droppoint)
	    if @droppoint.update(field_update)
	      redirect_to droppoints_path, notice: "Data Berhasil di Ubah"
	    else
	      render 'edit'
	    end
	end
	
	def destroy
		@droppoint = Droppoint.find(params[:id])
    	@droppoint.destroy
    	redirect_to droppoints_path, notice: "Data Berhasil di Dihapus"
	end

	private

	def field_update
		params.require(:droppoint).permit(:nama_dp, :kode_dp, :alamat, :pic, :telp, :mobile_phone, :email, :area, :rute_sprinter, :tahun_buka, :jam_buka, :jam_tutup, :jarak_gateway, :jumlah_transit, :kasir_kas, :kasir_bank, :description)
	end

end