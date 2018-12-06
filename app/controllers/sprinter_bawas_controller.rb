class SprinterBawasController < ApplicationController
	#before_action :authenticate_user!, only: [:new, :create, :edit , :update]

	def index
		@sprinter_bawas = SprinterBawa.order(:tanggal, :droppoint_id, :karyawan_id).page(params[:page])
	end

	def show
		@sprinter_bawa = SprinterBawa.find(params[:id])
		if @sprinter_bawa.nil?
			flash.now[:alert] = "Data tidak ditemukan"
    		render action: "index"
  		end
	end

	def new
		@k1 = Karyawan.find(current_user.id)
		@sprinter_bawa = SprinterBawa.new(karyawan_id: current_user.id,droppoint_id: @k1.try(:droppoint_id),tanggal: Time.zone.now, jabatan_id: @k1.try(:jabatan_id) )
	end

	def create
		#render plain: params.inspect
		#render plain: field_update
		@sprinter_bawa = SprinterBawa.new(field_update)
		set_user_add(@sprinter_bawa)
		if @sprinter_bawa.save
		   redirect_to edit_sprinter_bawa_path(@sprinter_bawa), notice: "Data Berhasil di Tambah"
		else
			render 'new'
		end
	end

	def edit
		@sprinter_bawa = SprinterBawa.find(params[:id])
	end
	def update
		@sprinter_bawa = SprinterBawa.find(params[:id])
		set_user_edit(@sprinter_bawa)
	    if @sprinter_bawa.update(field_update)
	      redirect_to sprinter_bawas_path, notice: "Data Berhasil di Ubah"
	    else
	      render 'edit'
	    end
	end
	
	def destroy
		@sprinter_bawa = SprinterBawa.find(params[:id])
    	@sprinter_bawa.destroy
    	redirect_to sprinter_bawas_path, notice: "Data Berhasil di Dihapus"
	end

	private

	def field_update
		params.require(:sprinter_bawa).permit(:karyawan_id, :droppoint_id, :jabatan_id,
			:tanggal, :nomor_form, :awb_bawa, :awb_cod, :nilai_cod, :awb_dfod, :nilai_dfod,
			:pop_awb_ppcash, :pop_awb_dfod, :pop_awb_cod, :km_start, :description
			)
	end

end