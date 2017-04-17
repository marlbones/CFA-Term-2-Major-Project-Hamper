class Product < ApplicationRecord
  belongs_to :user
  has_many :requests

  validates :title, presence: true
  validates :collection, presence: true
  validates :items, presence: true
  validates :contents, presence: true
  validates :description, presence: true
  validates :cost, presence: true


  def self.search(search)
    where("title LIKE ?", "%#{search}%")
    where("contents LIKE ?", "%#{search}%")
  end
end
