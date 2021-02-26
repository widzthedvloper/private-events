FactoryBot.define do
  factory :invitation do
    atendee { 1 }
    attended_event { 1 }
  end
end
