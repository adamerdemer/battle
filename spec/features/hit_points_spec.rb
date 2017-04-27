feature 'View hit points' do
  scenario 'see Player 2 hit points' do
    visit('/')
    fill_in :player_1, with: 'Alex'
    fill_in :player_2, with: 'Adam'
    click_button "Let's Play!"
    expect(page).to have_content 'Adam: 60HP'
  end
end
