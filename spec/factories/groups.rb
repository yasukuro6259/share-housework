FactoryBot.define do
  factory :group do
    content     { Faker::Alphanumeric.alphanumeric(number: 10) }
    
    association :user
  end
end