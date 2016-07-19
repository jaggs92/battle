RSpec.feature "Name Entry Form", :type => :feature do
  scenario "Players enter their names" do
    visit "/names"

    fill_in "Player 1", :with => "Gringo"
    fill_in "Player 2", :with => "Amigo"
    click_button "Enter Names"

    expect(page).to have_text("Player 1 is called Gringo and Player 2 is called Amigo")
  end
end
