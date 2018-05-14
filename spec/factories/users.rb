FactoryBot.define do
  factory :user do
    email Faker::Internet.email
    first_name Faker::Name.first_name
    last_name Faker::Name.last_name
    middle_name 'Mname'
    tax_number Faker::Number.number(10)
    birthday Faker::Date.birthday(24, 65)
    role :employee

    trait :admin do
      role :admin
    end

    trait :owner do
      role :owner
    end
  end
end
