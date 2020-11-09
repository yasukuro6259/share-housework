FactoryBot.define do
  factory :user do
    name                   {Faker::Name.last_name}
    email                  {Faker::Internet.free_email}
    password               {Faker::Internet.password(min_length: 8)}
    password_confirmation  {password}
  end
end
