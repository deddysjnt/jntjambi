class GlhdsController < ApplicationController
	#before_action :authenticate_user!, only: [:new, :create, :edit , :update]

	def index
		@glhds = Glhd.page(params[:page]).order(:tanggal)
	end

	def show
		@glhd = Glhd.find(params[:id])
		if @glhd.nil?
			flash.now[:alert] = "Data tidak ditemukan"
    		render action: "index"
  		end
	end

	def new
		@perkiraans = Perkiraan.all_detail_account
		@glhd = Glhd.new(tanggal: Time.zone.now(),droppoint_id: current_user.cabang)
		4.times {@glhd.gldts.build}
	end

	def create
		#render plain: params.inspect
		
		@glhd = Glhd.new(field_update)
    request_nomor_baru("GENERAL JOURNAL ",@glhd.tanggal.try(:strftime,"GL-%Y/%m"),@glhd,'nomor')
		set_user_add(@glhd)
		if @glhd.save
		   redirect_to edit_glhd_path(@glhd), notice: "Data Berhasil di Tambah"
		else
			#render plain: field_update
			render 'new'
		end
	end

	def edit
		@perkiraans = Perkiraan.all_detail_account
		@glhd = Glhd.find(params[:id])
		2.times{@glhd.gldts.build}
	end
	def update
		@glhd = Glhd.find(params[:id])
		set_user_edit(@glhd)
	    if @glhd.update(field_update)
	      redirect_to glhds_path, notice: "Data Berhasil di Ubah"
	    else
	      render 'edit'
	    end
	end
	
	def destroy
		@glhd = Glhd.find(params[:id])
    	@glhd.destroy
    	redirect_to glhds_path, notice: "Data Berhasil di Dihapus"
	end

	private

	def field_update
		params.require(:glhd).permit(:nomor, :noref, :tanggal, :total_debet, :total_credit, :description,
			gldts_attributes: [:id, :perkiraan_id, :description, :debet, :credit, :_destroy])
	end

end