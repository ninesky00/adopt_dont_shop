FactoryBot.define do 
  factory :application do 
    name {'John Doe'}
    address {'123 Turing Lane'}
    city {'Denver'}
    state {'Colorado'}
    zip {'12345'}
    description {'Not a great description'}
    pets {'Fido'}
    status {'approved'}
  end

  factory :random_application, class: Application do 
    name { Faker::Name.name }
    address { Faker::Address.street_address }
    city { Faker::Address.city }
    state { Faker::Address.state }
    zip { Faker::Address.zip }
    description { Faker::Quote.famous_last_words }
    pets { Faker::Creature::Dog.name }
    status {'approved'}
  end
end