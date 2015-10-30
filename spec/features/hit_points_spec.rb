require 'capybara'

feature 'hitpoints' do

  scenario 'checking hitpoints' do

    sign_in_and_play

    expect(page).to have_content('Eagle has 100 Hitpoints')

  end

end
