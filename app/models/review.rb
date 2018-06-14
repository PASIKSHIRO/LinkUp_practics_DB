class Review < ApplicationRecord
  belongs_to :user
  belongs_to :response, polymorphic: true
end
