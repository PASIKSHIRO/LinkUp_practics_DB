class Review < ApplicationRecord
  belongs_to :user
  belongs_to :response, polymorphic: true
  validate :leave_item, :leave_user, on: :create

  def leave_user
    return unless response_type == 'User'
    booking = Booking.joins(:item).where(items: { user_id: response_id }, bookings: { user_id: user_id })
    renting = Booking.joins(:item).where(items: { user_id: user_id }, bookings: { user_id: response_id})
    if booking.empty? && renting.empty?
      errors.add(:user_id, 'Cannot leave a review for a user you never dealt with')
    end
  end

  def leave_item
    return unless response_type == 'Item'
    booking = Booking.where(bookings: { user_id: user_id, item_id: response_id })
    if booking.empty?
    errors.add(:user_id, 'Cannot leave a review for an item you never booked')
    end
  end

end
