FactoryBot.define do
  factory :task do
    content         { Faker::Name.last_name }
    description     { Faker::Quote.famous_last_words }

    association :user
    association :group
    after(:build) do |item|
      item.image.attach(io: File.open('public/images/test_image.png'), filename: 'test_image.png')
    end
  end
end
