FactoryBot.define do
  factory :user do
    name { "Drew" }
    username { "dhund90" }
    email { "email@example.com" }
    password { "foobar" }
    password_confirmation { "foobar" }
  end
end
