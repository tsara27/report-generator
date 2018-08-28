class RoomClass < ApplicationRecord
  belongs_to :user
  belongs_to :room

  has_many :room_records
end
