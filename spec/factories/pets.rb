FactoryBot.define do
  factory :pet do
      image { Faker::Avatar.image }
      name { Faker::Creature::dog.name }
      description { Faker::Creature::Dog.breed}
      approximate_age { Faker::Number.within(range: 1..16) }
      sex { Faker::Creature::Dog.gender }
  end
end