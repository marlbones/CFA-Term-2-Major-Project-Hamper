class User < ApplicationRecord
  rolify
  ratyrate_rateable "selling", "buying"
  ratyrate_rater
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :products
  has_many :requests
  has_many :reviews

  def assign_default_role
  self.add_role(:member) if self.roles.blank?
  end

  def admin?
    has_role?(:admin)
  end

end
