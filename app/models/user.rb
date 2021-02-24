class User < ApplicationRecord
  validates :email, presence: true, uniqueness: true

  has_many :events, class_name: 'Event', foreign_key: 'creator'
  has_many :invitations, foreign_key: 'atendee'
  has_many :attended_event, through: 'invitations'
end
