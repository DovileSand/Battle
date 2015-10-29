require 'capybara'

feature 'hitpoints' do

  scenario 'checking hitpoints' do

    sign_in_and_play

    expect(page).to have_content('900 Hitpoints')

  end

end
