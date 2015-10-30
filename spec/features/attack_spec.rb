require 'capybara'

feature 'attacking player2' do

  scenario 'player1 attacks player2 and receives confirmation' do

    sign_in_and_play

    click_on ('Attack')
    expect(page).to have_content('Duck attacked Eagle')

  end

end
