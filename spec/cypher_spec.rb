# spec/caesar_cypher_spec.rb

require './lib/caesar_cypher'

describe '#cypher' do
  it 'returns nothing when given empty string' do
    expect(cypher('')).to eql('')
  end
end
