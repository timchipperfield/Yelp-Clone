feature "restaurants" do

  context "no restaurants have been added" do

    scenario 'should display a prompt to add a restaurant' do
      visit '/restaurants'
      expect(page).to have_content 'No restaurants yet'
      expect(page).to have_content 'Add a restaurant'
    end

  end

  context "restaurant have been created" do
    before do
      Restaurant.create(name: 'KFC')
    end
    scenario "display restaurant" do
      visit '/restaurants'
      expect(page).to have_content('KFC')
      expect(page).not_to have_content('No restaurants yet')
    end
  end
end
