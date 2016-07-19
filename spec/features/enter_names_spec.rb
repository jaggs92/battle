feature "Name Entry Form" do
  scenario "Players enter their names" do
    visit ("/")
    fill_in :player_1 , with: "Gringo"
    fill_in :player_2 , with: "Amigo"

    click_button "Enter Names"

    expect(page).to have_text("Player 1 is called Gringo and Player 2 is called Amigo")
  end
end
