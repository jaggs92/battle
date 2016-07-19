describe "Entering players names" do
let(:player1) { "John" }
let(:player2) { "Monica" }



  it "opens the website" do
    visit"http://localhost:4567/"
  end


  it "expects a player to fill in his/her name" do
    fill_in 'player1', :with => player1
    fill_in 'player2', :with => player2
    click_button('Submit')
    expect(page).to have_content(player1, player2)
  end


end


  # add a new Capybara feature test that expects
  # players to fill in their names (in a form),
  # submit that form, and see those names on-screen
