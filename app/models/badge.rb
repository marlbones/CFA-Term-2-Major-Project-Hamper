class Badge < ApplicationRecord
  belongs_to :user, :dependent => :delete
end
