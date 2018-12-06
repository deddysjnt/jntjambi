class SprinterKembalisController < ApplicationController
	#before_action :authenticate_user!, only: [:new, :create, :edit , :update]

	def index
		@sprinter_kembalis = SprinterKembali.order(:tanggal, :droppoint_id, :karyawan_id).page(params[:page])
	end

	def show
		@sprinter_kembali = SprinterKembali.find(params[:id])
		if @sprinter_kembali.nil?
			flash.now[:alert] = "Data tidak ditemukan"
    		render action: "index"
  		end
	end

	def new
		@k1 = Karyawan.find(current_user.id)
		@sprinter_kembali = SprinterKembali.new(karyawan_id: current_user.id,droppoint_id: @k1.try(:droppoint_id),tanggal: Time.zone.now, jabatan_id: @k1.try(:jabatan_id) )
	end

	def create
		#render plain: params.inspect
		#render plain: field_update
		@sprinter_kembali = SprinterKembali.new(field_update)
		set_user_add(@sprinter_kembali)
		if @sprinter_kembali.save
		   redirect_to edit_sprinter_kembali_path(@sprinter_kembali), notice: "Data Berhasil di Tambah"
		else
			render 'new'
		end
	end

	def edit
		@sprinter_kembali = SprinterKembali.find(params[:id])
	end
	def update
		@sprinter_kembali = SprinterKembali.find(params[:id])
		set_user_edit(@sprinter_kembali)
	    if @sprinter_kembali.update(field_update)
	      redirect_to sprinter_kembalis_path, notice: "Data Berhasil di Ubah"
	    else
	      render 'edit'
	    end
	end
	
	def destroy
		@sprinter_kembali = SprinterKembali.find(params[:id])
    	@sprinter_kembali.destroy
    	redirect_to sprinter_kembalis_path, notice: "Data Berhasil di Dihapus"
	end

	private

	def field_update
		params.require(:sprinter_kembali).permit(:nama_karyawan, :karyawan_id, :droppoint_id, :nama_dp,
			:jabatan_id, :nama_jabatan, :perkiraan_id, :nama_perkiraan,
			:tanggal, :nomor_form, :awb_bawa, :awb_gagal, :awb_sukses, :target_set, :pencapaian, 
			:uang_masuk, :uang_keluar, :uang_setoran, :uang_selisih,
			:awb_cod_sukses, :awb_dfod_sukses, :awb_ppcash_sukses,
			:pickup_mitra, :pickup_client, :pickup_user,
			:pop_awb_ppcash_kembali, :pop_awb_dfod_kembali, :pop_awb_cod_kembali,
			:km_start, :km_stop, :jarak_km, :harga_km, :biaya_bbm, :biaya_lain, :jenis_biaya_lain, :description
			)
	end

end