class Userregion < ApplicationRecord
  belongs_to :user
  belongs_to :region

  # validates :user, :uniqueness => {:scope=>:user_id}
end
