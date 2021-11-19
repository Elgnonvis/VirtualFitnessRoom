FactoryBot.define do
  factory :session do
    user { nil }
    programme { nil }
    session_title { "MyString" }
    session_description { "MyText" }
    session_duration { 1 }
    session_goals { "MyString" }
  end
end
