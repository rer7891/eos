# veterinarian GET    /veterinarians/:id(.:format)   
require 'rails_helper'
require 'pry'
RSpec.describe "As a user I'm able to visit a vetrinarian show page", type: :feature do
  describe "when I visit I will see a search box that allows a user to search pets" do
    before :each do
        @veterinarian = Veterinarian.create(name: "Happy Pets", phone: "423-316-2121")
        @owner_1 = @veterinarian.owners.create(name: "Brad Pitt", phone: "706-423-2122")
        @owner_2 = @veterinarian.owners.create(name: "Diana Ross", phone: "235-231-5665")
   
        @pet_1 = @owner_1.pets.create(name:"Fluffy", chip:"3445246", animal: 1)
        @pet_2 = @owner_2.pets.create(name: "Dexter", chip: "4t4t54t", animal: 0)
        @pet_3 = @owner_1.pets.create(name: "Maggie", chip: "52rwgt45", animal: 0)
    end

    it "it can search for pets that belong to owner" do
        visit "/veterinarians/#{@veterinarian.id}"
        click_on "Add New Item"
        expect(current_path).to eq(new_merchant_dash_item_path)

        fill_in "Search Bar", with: @pet_1.name

        click_button "Search"

        expect(current_path).to eq("/pets/#{@pet_1.id}")
    end
  end
end
