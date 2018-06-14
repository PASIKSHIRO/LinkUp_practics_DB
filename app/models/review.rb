class Review < ApplicationRecord
  belongs_to :user
  belongs_to :response, polymorphic: true
  validate :cannot_leave_review_for_an_item, :cannot_leave_review_for_a_user,
           on: :create
end
