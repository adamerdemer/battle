def sign_in_and_play
  visit('/')
  fill_in "player_1", with: 'Alex'
  fill_in "player_2", with: 'Adam'
  click_button("Let's Play!")
end
