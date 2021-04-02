class Userregion < ApplicationRecord
  belongs_to :user
  belongs_to :region
end
