require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('name of path', {:type => :feature}) do
  it('print the total number of times a word is used in a string that you are looking for') do
    visit('/')
    fill_in('sentence', :with => 'my dog has a dog friend')
    fill_in('word', :with => 'dog')
    click_button('Submit')
    expect(page).to have_content(2)
  end
end
