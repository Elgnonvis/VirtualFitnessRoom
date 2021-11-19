class User < ApplicationRecord
  has_many :programmes, dependent: :destroy
  has_many :sessions, dependent: :destroy

  attr_accessor :login
  #validates :username, presence: true, uniqueness: {case_sensitive: false}, format: { with: /\A[a-zA-Z0-9 _\.]*\z/ }
  validates_uniqueness_of :username
  # validate :avatar_type
  # validates :birthday,
  validates :gender, presence: true

  # :date => { :after => Time.now + 1.hour, :before => Time.now + 1.year }

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :invitable, :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable, :trackable

  def self.find_first_by_auth_conditions(warden_conditions)
    conditions = warden_conditions.dup
    if login = conditions.delete(:login)
        where(conditions).where(["lower(username) = :value OR lower(email) = :value", { :value => login.downcase }]).first
    else
        where(conditions).first
    end
  end
  # Permettre la connexion si et seulement si le compte n'est pas désactivé
  def active_for_authentication?
    super && !desactivated
  end
  # Au lieu de détruire le compte, on désactive
  def destroy
    update_attributes(desactivated: true) unless desactivated
  end

  private

  # def avatar_type
  #   avatar.each do |image|
  #     if !image.content_type.in?(%('image/jpeg image/png '))
  #       errors.add(:avatar, 'needs to be JPEG or PNG')
  #     end
  # end
end
