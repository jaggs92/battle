require 'spec_helper'

feature "Shows hitpoints for players" do
  let(:player1) { "Matt" }
  let(:player2) { "Damon" }

  before do
    visit("/")
    fill_in 'player1', :with => player1
    fill_in 'player2', :with => player2
    click_button('Submit')
  end

  scenario "shows player 2's hit points" do
    visit('/play')
    expect(page).to have_content("#{player2} (100/100)")
  end

end
