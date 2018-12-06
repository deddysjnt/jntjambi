class ProductsController < ApplicationController
	#before_action :authenticate_user!, only: [:new, :create, :edit , :update]

	def index
		@products = Product.all.order(:product_name).page(params[:page])
		respond_to do |format|
			format.html
			format.json { @products = Product.search(params[:term]) }
		end
	end

	def show
		@product = Product.find(params[:id])
		if @product.nil?
			flash.now[:alert] = "Data tidak ditemukan"
    		render action: "index"
  		end
	end

	def new
		@product = Product.new
	end

	def create
		#render plain: params.inspect
		
		@product = Product.new(field_update)
		set_user_add(@product)
		if @product.save
		   redirect_to products_path, notice: "Data Berhasil di Tambah"
		else
			#render plain: field_update
			render 'new'
		end
	end

	def edit
		@product = Product.find(params[:id])
	end
	def update
		@product = Product.find(params[:id])
		set_user_edit(@product)
	    if @product.update(field_update)
	      redirect_to products_path, notice: "Data Berhasil di Ubah"
	    else
	      render 'edit'
	    end
	end
	
	def destroy
		@product = Product.find(params[:id])
    	@product.destroy
    	redirect_to products_path, notice: "Data Berhasil di Dihapus"
	end

	private

	def field_update
		params.require(:product).permit(:category_id, :category_name,:product_name, :barcode, :satuan, :hitungan_dasar, :sticky_order, :tipe, :produksi_mode, :description, :harga_jual, :url_gambar)
	end

end