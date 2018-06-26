class Item < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_many :reviews, as: :response, dependent: :destroy
  validate :name_item, :description_item, presence: true
end
