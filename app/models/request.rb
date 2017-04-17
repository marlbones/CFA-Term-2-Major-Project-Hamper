class Request < ApplicationRecord
  belongs_to :user
  belongs_to :product

  def accept
    self.approved = true
    save
  end

  def reject
    self.approved = false
    save
  end

end
