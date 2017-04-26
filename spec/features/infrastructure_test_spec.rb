feature "Homepage" do
  scenario 'visited homepage' do 
    visit('/')
    expect(page).to have_content 'Testing infrastructure working!'
  end
end

