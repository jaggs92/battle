feature "Name Entry Form" do
  scenario "Players enter their names" do
<<<<<<< HEAD
    visit ("/")
    fill_in :player_1 , with: "Gringo"
    fill_in :player_2 , with: "Amigo"
=======
    visit "/"

    fill_in :player_1, with: 'Gringo'
    fill_in :player_2, with:  'Amigo'
>>>>>>> 41aa00d7a6a7dcc73b5a6b323c21f97a7df21441
    click_button "Enter Names"

    expect(page).to have_text("Player 1 is called Gringo and Player 2 is called Amigo")
  end
end
