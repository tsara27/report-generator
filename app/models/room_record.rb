class RoomRecord < ApplicationRecord
  belongs_to :user
  belongs_to :room_class, required: false
  belongs_to :room, required: false
end
