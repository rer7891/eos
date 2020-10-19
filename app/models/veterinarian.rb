class Veterinarian < ActiveRecord::Base
    has_many :owners
    has_many :pets, through: :owners
end
