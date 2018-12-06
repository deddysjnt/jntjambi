class UsersController < ApplicationController

	def index
		@users = User.order(:username).page(params[:page])
	end
	def show
		@user = User.find(params[:id])
	end
	def edit
		@user = User.find(params[:id])
	end
	def update
		@user = User.find(params[:id])
		@user.approved_by = current_user.id
		#render plain: field_update
		#render plain: params.inspect
    if @user.update(field_update)
      redirect_to root_path, notice: "Data Berhasil di Ubah"
    else
      render 'edit'
    end
	end
	
	def destroy
		@user = User.find(params[:id])
    	@user.destroy
    	redirect_to users_path, notice: "Data Berhasil di Dihapus"
	end

	private

	def field_update
		params.require(:user).permit(:username, :karyawan_id, :tambahdata, :ubahdata, :lihatdata, :hapusdata, :mobile_phone, :role_id, :level, :divisi, :cabang, :droppoint_id, :droppoint, :approved, :approved_by)
	end
end
