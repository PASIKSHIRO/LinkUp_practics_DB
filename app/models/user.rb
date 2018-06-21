class User < ApplicationRecord
  has_many :items, dependent: :destroy
  has_many :bookings, dependent: :destroy
  has_many :reviews, as: :response, dependent: :destroy
  belongs_to :city
  has_many :reviews_items_reviews, through: :items, source: :reviews
end
