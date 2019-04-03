class TicketType < ApplicationRecord
  belongs_to :event
  belongs_to :ticket_zone
  validate :price, numerality: {greater_than_or_equal_to: 0}
end
