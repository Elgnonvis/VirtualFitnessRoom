FactoryBot.define do
  factory :programme do
    programme_name { "MyString" }
    programme_cost { 1 }
    user { nil }
    programme_goal { "MyText" }
    images { "MyString" }
    programme_duration { "MyString" }
    payed { false }
  end
end
