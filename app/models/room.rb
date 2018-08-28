class Room < ApplicationRecord
  belongs_to :user

  has_many :room_classes
  has_many :room_records
end
