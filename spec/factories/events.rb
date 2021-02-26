FactoryBot.define do
  factory :event do
    name { "MyString" }
    description { "MyText" }
    date { "2021-02-26" }
    creator { 1 }
  end
end
