class User < ApplicationRecord
  rolify
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :products
  has_many :requests

  geocoded_by :location
  after_validation :geocode

  def assign_default_role
  self.add_role(:member) if self.roles.blank?
  end

  def admin?
    has_role?(:admin)
  end
  
end
