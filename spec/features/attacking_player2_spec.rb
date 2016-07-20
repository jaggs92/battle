require 'spec_helper'

feature "attacking player 2" do
let(:player1) { "John" }
let(:player2) { "Monica" }

  scenario "player 1 attacks player 2 "   do
    sign_in_and_play
    click_button('Attack')
    expect(page).to have_content("#{player1} attacks #{player2}")
  end

end
