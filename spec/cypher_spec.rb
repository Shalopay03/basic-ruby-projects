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
  it 'works with just letters' do
    expect(cypher('abcde', 1)).to eql('bcdef')
  end
  it 'jumps from the end of alphabet to beginning' do
    expect(cypher('abcdez', 1)).to eql('bcdefa')
  end
  it 'does not change non letters' do
    expect(cypher('asd45s', 1)).to eql('bte45t')
  end
end
