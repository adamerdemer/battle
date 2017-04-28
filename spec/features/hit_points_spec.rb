feature 'View hit points' do
  scenario 'see Player 2 hit points' do
  sign_in_and_play
    expect(page).to have_content 'Adam has 60 hitpoints'
  end
end
