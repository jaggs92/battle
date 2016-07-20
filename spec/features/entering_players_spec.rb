require "spec_helper"

feature "Entering players names" do
let(:player1) { "John" }
let(:player2) { "Monica" }

  scenario "opens the website" do
    visit("/")
  end

  scenario "expects a player to fill in his/her name" do
    sign_in_and_play
    names = "#{player1} vs #{player2}"
    expect(page).to have_content(names)

  end

end
