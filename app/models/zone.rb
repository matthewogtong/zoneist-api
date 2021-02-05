class Zone < ApplicationRecord
  belongs_to :user
  belongs_to :tag
  belongs_to :trinket
  belongs_to :region
end
