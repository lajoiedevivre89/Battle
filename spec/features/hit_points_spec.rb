feature 'View hit points' do
  scenario 'see player 2 hit points' do
    visit('/')
    fill_in :player_1_name, with: 'Vish'
    fill_in :player_2_name, with: 'Emily'
    click_button 'Submit'
    expect(page).to have_content 'Emily: 60hp' 
  end
end
