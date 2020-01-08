def sign_in_and_play

  visit('/')
    fill_in :player_1_name, with: 'Vish'
    fill_in :player_2_name, with: 'Emily'
    click_button 'Submit'
end 



