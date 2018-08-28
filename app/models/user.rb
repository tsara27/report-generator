class User < ApplicationRecord
  has_many :rooms
  has_many :room_classes
  has_many :room_records
end
