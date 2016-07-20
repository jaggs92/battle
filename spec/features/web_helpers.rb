def sign_in_and_play
  visit ("/")
  fill_in :player_1 , with: "Gringo"
  fill_in :player_2 , with: "Amigo"

 click_button "Enter Names"
end
