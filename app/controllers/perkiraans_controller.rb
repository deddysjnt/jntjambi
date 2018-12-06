class PerkiraansController < ApplicationController
	#before_action :authenticate_user!, only: [:new, :create, :edit , :update]

	def index
		if params[:term].present?
				@perkiraans = Perkiraan.search(params[:term]).page(params[:page])
		else
				@perkiraans = Perkiraan.all.order(:acno).page(params[:page])
		end
		respond_to do |format|
			format.html
			format.json { render json: @perkiraans.map{ |t| { :label => t.nama_perkiraan, :acno => t.acno, :id => t.id }} }
		end
	end
	def show
		#@perkiraan = Perkiraan.find(params[:id])
		#if @perkiraan.nil?
		#	flash.now[:alert] = "Data tidak ditemukan"
    #		render action: "index"
  	#	end
	end

	def new
		@perkiraan = Perkiraan.new
	end

	def create
		#render plain: params.inspect
		#render plain: field_update
		@perkiraan = Perkiraan.new(field_update)
		set_user_add(@perkiraan)
		if @perkiraan.save
		   redirect_to perkiraans_path, notice: "Data Berhasil di Tambah"
		else
			render 'new'
		end
	end

	def edit
		@perkiraan = Perkiraan.find(params[:id])
	end
	def update
		@perkiraan = Perkiraan.find(params[:id])
		set_user_edit(@perkiraan)
	    if @perkiraan.update(field_update)
	      redirect_to perkiraans_path, notice: "Data Berhasil di Ubah"
	    else
	      render 'edit'
	    end
	end
	
	def destroy
		@perkiraan = Perkiraan.find(params[:id])
    	@perkiraan.destroy
    	redirect_to perkiraans_path, notice: "Data Berhasil di Dihapus"
	end

	private

	def field_update
		params.require(:perkiraan).permit(:acno, :nama_perkiraan, :level_view, :buku, :ac_detail, :normal_balance, :sticky_order_view, :sticky_order_audit)
	end

end