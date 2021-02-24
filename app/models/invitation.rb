class Invitation < ApplicationRecord
    belongs_to :atendee, class_name: "User"
    belongs_to :attended_event, class: "Event"
end
