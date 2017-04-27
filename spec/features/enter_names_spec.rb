feature "Battle" do
  scenario 'filling in forms' do
  sign_in_and_play
    expect(page).to have_content('The Epic Battle of Alex and Adam')
  end
end
