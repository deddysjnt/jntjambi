class AgentsController < ApplicationController
	#before_action :authenticate_user!, only: [:new, :create, :edit , :update]

	def index
		@agents = Agent.page(params[:page]).order(:kode_agent)
	end

	def show
		@agent = Agent.find(params[:id])
		if @agent.nil?
			flash.now[:alert] = "Data tidak ditemukan"
    		render action: "index"
  		end
	end

	def new
		@agent = Agent.new
	end

	def create
		#render plain: params.inspect
		#render plain: field_update
		@agent = Agent.new(field_update)
		set_user_add(@agent)
		if @agent.save
		   redirect_to agents_path, notice: "Data Berhasil di Tambah"
		else
			render 'new'
		end
	end

	def edit
		@agent = Agent.find(params[:id])
	end
	def update
		@agent = Agent.find(params[:id])
		set_user_edit(@agent)
	    if @agent.update(field_update)
	      redirect_to agents_path, notice: "Data Berhasil di Ubah"
	    else
	      render 'edit'
	    end
	end
	
	def destroy
		@agent = Agent.find(params[:id])
    	@agent.destroy
    	redirect_to agents_path, notice: "Data Berhasil di Dihapus"
	end

	private

	def field_update
		params.require(:agent).permit(:kode_agent, :nama_agent, :alamat, :kontak, :email, :telp, :mobile_phone, :kirim_via, :jenis_transit, :jumlah_transit, :estimasi_tiba)
	end

end
