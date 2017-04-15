class Product < ApplicationRecord
  belongs_to :user

validates :title, presence: true
validates :collection, presence: true
validates :items, presence: true
validates :contents, presence: true
validates :description, presence: true
validates :cost, presence: true


  def self.search(search)
    where("title LIKE ?", "%#{search}%")
    
  end
  # def self.search(search)
  #   if search
  #     find(:all, :conditions => ['title LIKE ?', "%#{search}%"])
  #   else
  #     find(:all)
  #   end
  # end

end
