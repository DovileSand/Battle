require 'capybara'

feature "enter player names" do

  scenario "asks to fill in player names" do

    visit('/')
    expect(page).to have_content('Enter your player names.')

    fill_in('Player1', with: 'Dovile')
    fill_in('Player2', with: 'RJ')

    click_button('Save')
    expect(page).to have_content('Dovile vs. RJ')

  end

end
