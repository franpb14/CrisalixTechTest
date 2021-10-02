Fabricator(:user) do
  name { Faker::Name.name }
  surname { Faker::Name.name }
  email { Faker::Internet.email }
  password { Faker::Internet.password(min_length: 9) }
  role { Faker::Number.within(range: 0..1) }
  city { Faker::Address.city }
end