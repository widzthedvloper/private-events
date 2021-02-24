class Event < ApplicationRecord
  validates :name, presence: true, length: { minimum: 3, maximum: 30 }
  validates :description, presence: true
  validates :creator, presence: true

  belongs_to :user, class_name: 'User', foreign_key: 'creator'
  has_many :invitations, foreign_key: 'attended_event'
  has_many :atendee, through: 'invitations'

  scope :future_events, -> { where('date > ?', Time.zone.now) }
  scope :past_events, -> { where('date <= ?', Time.zone.now) }
end
