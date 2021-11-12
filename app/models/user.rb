class User < ApplicationRecord
  attr_accessor :login
  validates :username, presence: true, uniqueness: {case_sensitive: false}, format: { with: /\A[a-zA-Z0-9 _\.]*\z/ }
  # validates :birthday,
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
end
