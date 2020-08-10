def create_owners_for_vet(vid)
  (rand(10) + 1).times do
    o = Owner.create veterinarian_id: vid, name: Faker::Name.name, phone: Faker::PhoneNumber.phone_number
    create_pets_for_owner o.id
  end
end

def create_pets_for_owner(oid)
  (rand(5) + 1).times do
    Pet.create owner_id: oid, name: Faker::Creature::Cat.name, animal: [:dog, :dog, :dog, :dog, :cat, :cat, :cat,  :other].sample, chip: Faker::Crypto.md5
  end
end

6.times do |i|
  v = Veterinarian.create name: Faker::Name.name, phone: Faker::PhoneNumber.phone_number
  create_owners_for_vet v.id
end
