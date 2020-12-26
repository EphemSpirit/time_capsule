FactoryBot.define do
  factory :user do
    name { "Drew" }
    username { "dhund90" }
    email { "email@example.com" }
    password { "foobar" }
    password_confirmation { "foobar" }
  end

  factory :entry do
    title { "test entry" }
    body { "test post body" }
    author_id { user.id }
  end
end
