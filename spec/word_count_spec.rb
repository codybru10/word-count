require('rspec')
require('pry')
require('word_count')

describe('String#word_count') do
  it('returns the number of times a word is used in a string, when the string is only one word') do
    expect('cat'.count('cat')).to(eq(1))
  end

  it('returns the number of times a word is used in a string, when the string is multiple words') do
    expect('my cat ran up the tree'.count('cat')).to(eq(1))
  end

  it('returns the number of times a word is used in a string, when the string is multiple words') do
    expect('my dog has a new dog friend'.count('dog')).to(eq(2))
  end
end
