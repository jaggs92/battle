feature "View Hit Points" do
  scenario "Players can see their hit points" do
    visit ("/")
    fill_in :player_1 , with: "Gringo"
    fill_in :player_2 , with: "Amigo"

    click_button "Enter Names"

    expect(page).to have_text("Amigo has 60HP")
  end
end
