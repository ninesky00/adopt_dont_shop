FactoryBot.define do 
  factory :shelter do 
    name {"Adopt Don't Shop"}
    address {'456 Adoption Lane'}
    city {'Denver'}
    state {'Colorado'}
    zip {'12345'}
  end

  factory :random_shelter, class: Shelter do 
    name { Faker::Company.name }
    address { Faker::Address.street_address }
    city { Faker::Address.city }
    state { Faker::Address.state }
    zip { Faker::Address.zip }
  end
end