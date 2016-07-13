feature "restaurants" do
  context "no restaurants have been added" do
    scenario 'should display a prompt to add a restaurant' do
      visit '/restaurants'
      expect(page).to have_content 'No restaurants yet'
      expect(page).to have_content 'Add a restaurant'
    end
  end
end
