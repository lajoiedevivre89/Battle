feature 'enter players' do
  scenario 'players can enter their names into a form' do
    visit('/')
    fill_in :player_1_name, with: 'Vish'
    fill_in :player_2_name, with: 'Emily'
    click_button 'Submit'
    expect(page).to have_content 'Vish vs. Emily'
  end
end