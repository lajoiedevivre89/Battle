feature 'enter players' do
  scenario 'players can enter their names into a form' do
    sign_in_and_play
    expect(page).to have_content 'Vish vs. Emily'
  end
end