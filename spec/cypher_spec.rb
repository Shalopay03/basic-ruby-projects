# spec/caesar_cypher_spec.rb

require './lib/caesar_cypher'

describe '#cypher' do
  it 'returns nothing when given empty string' do
    expect(cypher('')).to eql('')
  end
  it 'returns nil when given nil' do
    expect(cypher(nil)).to eql(nil)
  end
  it 'returns nil when given number' do
    expect(cypher(10)).to eql(nil)
  end
end
