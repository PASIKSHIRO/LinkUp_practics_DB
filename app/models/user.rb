class User < ApplicationRecord
  has_many :items, dependent: :destroy
  has_many :bookings, dependent: :destroy
  has_many :reviews, as: :response, dependent: :destroy
end
