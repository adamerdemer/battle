feature "Battle" do
  scenario 'filling in forms' do
    visit('/')
    fill_in "player_1", with: 'Alex'
    fill_in "player_2", with: 'Adam'
    click_button("Let's Play!")
    expect(page).to have_content('The Epic Battle of Alex and Adam')
  end
end
