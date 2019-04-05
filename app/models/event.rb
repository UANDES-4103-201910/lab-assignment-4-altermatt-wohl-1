class Event < ApplicationRecord
  belongs_to :event_venue
  has_many :ticket_types
  validates :start_date, uniqueness: { scope: :event_venue,
    message: "The venue is occupied on that date" }
  validate :start_date_cant_be_before_created_at

  def start_date_cant_be_before_created_at
    created_at = DateTime.now  
    if start_date < created_at
      errors.messages(:start_date,"can't be before :created_at")
    end
  end
end
