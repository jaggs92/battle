feature "Name Entry Form" do
  scenario "Players enter their names" do
    sign_in_and_play
    expect(page).to have_text("Player 1 is called Gringo and Player 2 is called Amigo")
  end
end
