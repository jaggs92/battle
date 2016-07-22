def sign_in_and_play
  visit "/"
  fill_in :name1, with: 'Albie'
  fill_in :name2, with: 'Noby'
  click_button "submit"
end
