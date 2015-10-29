def sign_in_and_play

  visit('/')
  expect(page).to have_content('Enter your player names.')

  fill_in('Player1', with: 'Dovile')
  fill_in('Player2', with: 'RJ')

  click_button('Save')

end
