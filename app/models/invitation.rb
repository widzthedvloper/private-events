class Invitation < ApplicationRecord
  validates :atendee, presence: true
  validates :attended_event, presence: true
  belongs_to :atendee, class_name: 'User', foreign_key: 'atendee'
  belongs_to :attended_event, class_name: 'Event', foreign_key: 'attended_event'
end
