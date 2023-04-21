class Transaction < ApplicationRecord
  validates :amount, presence: true
  validates :email, presence: true, unless: ->(transaction){ transaction.phone.present? }
  validates :phone, presence: true, unless: ->(transaction){ transaction.email.present? }
  validates :scheduled_at, presence: true
  validate :scheduled_time_is_in_future

  def scheduled_time_is_in_future
    errors.add(:scheduled_at, 'must be in the future') if scheduled_at.present? && scheduled_at <= Time.now
  end
end

