feature "View Hit Points" do
  scenario "Players can see their hit points" do
    sign_in_and_play
    expect(page).to have_text("Amigo has 60HP")
  end
end
