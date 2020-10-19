# veterinarian GET    /veterinarians/:id(.:format)   
require 'rails_helper'

RSpec.describe "As a user I'm able to visit a vetrinarian show page", type: :feature do
  describe "when I visit I will see a search box that allows a user to search pets" do
    before :each do
        @veterinarian = Veterinarian.create()
        @owner_1 = @vetrinarian.owners.create()
        @owner_2 = @vetrinarian.owners.create()
        @pet_1 = @owner_1.pets.create()
        @pet_2 = @owner_2.pets.create()
        @pet_3 = @owner_1.pets.create()
    end

    it "it can search for pets that belong to owner" do
        visit "/veterinarian/#{@veterinarian.id}"
        click_on "Add New Item"
        expect(current_path).to eq(new_merchant_dash_item_path)

        fill_in "Search Bar", with: @pet_1.name

        click_button "Search"

        expect(current_path).to eq("/pets/#{@pet_1.id}")
    end
  end
end
