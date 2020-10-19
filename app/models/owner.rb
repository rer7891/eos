class Owner < ActiveRecord::Base
    belongs_to :veterinarian
    has_many :pets
end
