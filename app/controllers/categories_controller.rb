class CategoriesController < ApplicationController

	def index
		if params[:term].present?
			@categories = Category.category_name(params[:term]) 
		else
			@categories = Category.order(:category_name).page(params[:page])
		end
		respond_to do |format|
			format.html
			format.json { render json: @categories.map(&:category_name) }
		end
	end
 
	def show
		if params[:term].present?
			@categories = Category.category_name(params[:term]) 
		else
			@categories = Category.all	
		end
    	render json: @categories.map(&:category_name)
	end

	def new
		@category = Category.new
	end

	def create
		#render plain: params.inspect
		
		@category = Category.new(field_update)
		set_user_add(@category)
		if @category.save
		   redirect_to categories_path, notice: "Data Berhasil di Tambah"
		else
			#render plain: field_update 
			render action: 'new'
		end
	end

	def edit
		@category = Category.find(params[:id])
	end
	def update
		@category = Category.find(params[:id])
	    set_user_edit(@category)
	    if @category.update(field_update)
	      redirect_to categories_path, notice: "Data Berhasil di Ubah"
	    else
	      render 'edit'
	    end
	end
	
	def destroy
		@category = Category.find(params[:id])
    	@category.destroy
    	redirect_to categories_path, notice: "Data Berhasil di Dihapus"
	end

	private

	def field_update
		params.require(:category).permit(:category_name, :ingroup)
	end

end
