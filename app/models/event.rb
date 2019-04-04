class Event < ApplicationRecord
  belongs_to :event_venue
  has_many :ticket_types
  validate :start_date_cant_be_before_created_at

  def start_date_cant_be_before_created_at
    created_at = DateTime.now  
    if start_date < created_at
      errors.add(:start_date,"can't be before")
    end
  end
end
