class Product < ApplicationRecord
  belongs_to :user, :dependent => :delete
  has_many :requests

  validates :title, presence: true
  validates :collection, presence: true
  validates :items, presence: true
  validates :contents, presence: true
  validates :description, presence: true
  validates :cost, presence: true

  geocoded_by :location
  after_validation :geocode

  mount_uploaders :images, ProductUploader
  serialize :images, JSON

  def self.search(search)
    where("title LIKE ?", "%#{search}%")
    where("contents LIKE ?", "%#{search}%")
  end
end
