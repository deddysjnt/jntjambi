class JabatanpusatsController < ApplicationController
	#before_action :authenticate_user!, only: [:new, :create, :edit , :update]

	def index
		if params[:term].present?
			@jabatanpusats = Jabatanpusat.search(params[:term]).page(params[:page])
		else
			@jabatanpusats = Jabatanpusat.all.order(:nama_jabatan_pusat).page(params[:page])
		end
		respond_to do |format|
			format.html
			format.json {render json: @jabatanpusats.map {|t| { :label => t.nama_jabatan_pusat, :id => t.id }}}
		end
	end
	def show
		@jabatanpusat = Jabatanpusat.find(params[:id])
		if @jabatanpusat.nil?
			flash.now[:alert] = "Data tidak ditemukan"
    		render action: "index"
  		end
	end

	def new
		@jabatanpusat = Jabatanpusat.new
	end

	def create
		#render plain: params.inspect
		#render plain: field_update
		@jabatanpusat = Jabatanpusat.new(field_update)
		set_user_add(@jabatanpusat)
		if @jabatanpusat.save
		   redirect_to jabatanpusats_path, notice: "Data Berhasil di Tambah"
		else
			render 'new'
		end
	end

	def edit
		@jabatanpusat = Jabatanpusat.find(params[:id])
	end
	def update
		@jabatanpusat = Jabatanpusat.find(params[:id])
		set_user_edit(@jabatanpusat)
	    if @jabatanpusat.update(field_update)
	      redirect_to jabatanpusats_path, notice: "Data Berhasil di Ubah"
	    else
	      render 'edit'
	    end
	end
	
	def destroy
		@jabatanpusat = Jabatanpusat.find(params[:id])
    	@jabatanpusat.destroy
    	redirect_to jabatanpusats_path, notice: "Data Berhasil di Dihapus"
	end

	private

	def field_update
		params.require(:jabatanpusat).permit(:nama_jabatan_pusat, :divisi_kerja_pusat, :gapok_training_pusat, :gapok_tetap_pusat, :tunjangan_jabatan_pusat, :tunjangan_masa_kerja_pusat, :description)
	end

end