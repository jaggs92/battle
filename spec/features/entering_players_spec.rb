require "spec_helper"

feature "Entering players names" do
let(:player1) { "John" }
let(:player2) { "Monica" }



  scenario "opens the website" do
    visit("/")
  end


  scenario "expects a player to fill in his/her name" do
    visit("/")
    fill_in 'player1', :with => player1
    fill_in 'player2', :with => player2
    click_button('Submit')
    names = "#{player1} + #{player2}"
    expect(page).to have_content(names)

  end


end


  # add a new Capybara feature test that expects
  # players to fill in their names (in a form),
  # submit that form, and see those names on-screen
