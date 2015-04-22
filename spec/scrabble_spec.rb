require "rspec"
require "pry"
require "scrabble"
require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application


describe("scrabble") do
    it('returns a scrabble score for a letter') do
      expect(('a').scrabble()).to(eq(1))
  end

  it('returns a scrabble score for a word') do
    expect(('aaaaazzzzz').scrabble()).to(eq(55))
  end


  it('returns a scrabble score for a word with a capital letter') do
    expect(('Aaaaazzzzz').scrabble()).to(eq(55))
  end
end

    describe('scrabble_spec_path', {:type => :feature})do
    it('takes user input and returns scrabble score')do
    visit('/')
    fill_in('word', :with => 'aaaa')
    click_button('Send')
    expect(page).to have_content('4')
  end
end
