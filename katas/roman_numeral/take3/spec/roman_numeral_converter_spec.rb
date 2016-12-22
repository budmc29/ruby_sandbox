require 'roman_numeral_converter'

RSpec.describe RomanNumeralConverter do
  subject { RomanNumeralConverter.new }

  it 'converts 1 to I' do
    expect(subject.convert(1)).to match('I')
  end

  it 'converts 2 to II' do
    expect(subject.convert(2)).to match('II')
  end

  it 'converts 4 to IV' do
    expect(subject.convert(4)).to match('IV')
  end

  it 'converts 5 to V' do
    expect(subject.convert(5)).to match('V')
  end

  it 'converts 6 to VI' do
    expect(subject.convert(6)).to match('VI')
  end

  it 'converts 9 to IX' do
    expect(subject.convert(9)).to match('IX')
  end

  it 'converts 10 to X' do
    expect(subject.convert(10)).to match('X')
  end

  it 'converts 20 to XX' do
    expect(subject.convert(20)).to match('XX')
  end

  it 'converts 40 to XL' do
    expect(subject.convert(40)).to match('XL')
  end

  it 'converts 50 to L' do
    expect(subject.convert(50)).to match('L')
  end

  it 'converts 90 to XC' do
    expect(subject.convert(90)).to match('XC')
  end

  it 'converts 100 to C' do
    expect(subject.convert(100)).to match('C')
  end

  it 'converts 400 to CD' do
    expect(subject.convert(400)).to match('CD')
  end
end
