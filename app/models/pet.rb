class Pet < ActiveRecord::Base
  ANIMAL_LIST = [:dog, :cat, :other]
  enum animal: ANIMAL_LIST
  belongs_to :owners
end
