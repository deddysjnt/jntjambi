class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  add_flash_types :success, :danger, :info
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :set_locale
  before_action :set_variabel_global
  before_action :authenticate_user!

  
  def set_user_add(var)
    var.user_add = current_user.id
    var.ip_address = current_user.current_sign_in_ip
  end
  def set_user_edit(var)
    var.user_edit = current_user.id
    var.ip_address = current_user.current_sign_in_ip
  end
  def set_user_approve(var)
    var.user_approve = current_user.id
    var.tanggal_approve = now()
  end
  def request_nomor_baru(transaksi,format_nomor,data,var)
    if transaksi.present?
      EntryPost.transaction do
        trs = transaksi + format_nomor
        nomor = EntryPost.find_or_create_by(transaksi: trs).lock!
        nomor.last_num += 1
        nomor.format_key = format_nomor+"-"+sprintf("%06d", nomor.last_num)
        nomor.save
      end
    end
  end
  protected
  def set_variabel_global
    $s3sukses = 'btn btn-outline-success btn-sm btn-block'
    $s3red    = 'btn btn-outline-danger btn-sm btn-block'
    $s3blue   = 'btn btn-outline-primary btn-sm btn-block'
  end
  def configure_permitted_parameters
  		#setting custom for devise field 
      added_attrs = [:email, :password, :password_confirmation, :role_id, :remember_me, :username, :karyawan_id, :mobile_phone, :level, :droppoint_id, :divisi, :cabang, :droppoint, :tambahdata, :hapusdata, :ubahdata, :lihatdata, :akunstatus, :approved, :approved_by]
    	devise_parameter_sanitizer.permit :sign_up, keys: added_attrs 
      devise_parameter_sanitizer.permit :account_update, keys: added_attrs
    	# Devise setting autentication with username or email
    	devise_parameter_sanitizer.permit(:sign_in) do |user_params|
    		user_params.permit(:username, :email)
      end
  end
  def set_locale
    I18n.locale = params[:locale] || I18n.default_locale
  end

end
