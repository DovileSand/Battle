require 'capybara'
require 'web_helpers'

feature "enter player names" do

  scenario "asks to fill in player names" do

    sign_in_and_play

    expect(page).to have_content('Duck vs. Eagle')

  end

end
