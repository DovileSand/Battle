require 'capybara'

feature 'attacking' do

  scenario 'player1 attacks player2 and receives confirmation' do

    sign_in_and_play

    click_on 'Attack'
    expect(page).to have_content('Duck attacked Eagle')

  end

  scenario 'reduce player2 hitpoints' do

    sign_in_and_play

    click_on 'Attack'
    expect(page).not_to have_content 'Eagle has 100 Hitpoints'
    expect(page).to have_content 'Eagle has 99 Hitpoints'

  end

end
