class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  after_create :send_admin_mail
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :trackable, :timeoutable, authentication_keys: [:login]

  # Setting Authentifikasi for bycrip
  # has_secure_password
  validates :email, presence: true, uniqueness: true
  validates :username, presence: true, uniqueness: { case_sensitive: true }
  validates_format_of :username, with: /^[a-zA-Z0-9_\.]*$/, :multiline => true
  validates :karyawan_id, presence: true, on: :update
  validates :mobile_phone, presence: true, on: :update

  # Realasi Antar Tabel Dalam Database
  belongs_to :role
  has_many :forum_posts
  has_many :forum_threads

  attr_writer :login

  def login
    @login || self.username || self.email
  end

  def self.find_for_database_authentication(warden_conditions)
    conditions = warden_conditions.dup
    if login = conditions.delete(:login)
      where(conditions.to_h).where(["lower(username) = :value OR lower(email) = :value", { :value => login.downcase }]).first
    else
      where(conditions.to_h).first
    end
  end

  def send_devise_notification(notification, *args)
    devise_mailer.send(notification, self, *args).deliver_later
  end

  def send_admin_mail
    AdminMailer.new_user_waiting_for_approval(email).deliver
  end

  def active_for_authentication? 
    super && approved? 
  end 
  
  def inactive_message 
    approved? ? super : :not_approved
  end
  def nama_karyawan
    if karyawan_id.present?
      kry = Karyawan.find_by_id(karyawan_id)
      kry.try(:nama_karyawan)
    else
      ""
    end
  end
  def nama_dp
    if droppoint_id.present?
      dp = Droppoint.find_by_id(droppoint_id)
      dp.try(:nama_dp)
    else
      ""
    end
  end

  def self.boleh_tambah_data?
    tambahdata?
  end
  def self.boleh_ubah_data?
    ubahdata?
  end
  def self.boleh_hapus_data?
    hapusdata?
  end
  def self.boleh_lihat_data?
    lihatdata?
  end
  def self.boleh_posting_data?
    level > 2
  end  
  def self.all_approved
    where 'approved = ?', true
  end
  def self.all_unapproved
    where 'approved = ?', false
  end
  def self.all_user_login
    where 'sign_in = ?', true
  end

end
