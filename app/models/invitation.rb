class Invitation < ApplicationRecord
  belongs_to :atendee, class_name: 'User', foreign_key: 'atendee'
  belongs_to :attended_event, class_name: 'Event', foreign_key: 'attended_event'
end
