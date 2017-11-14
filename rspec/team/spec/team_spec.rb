require 'rspec'
require_relative '../lib/team.rb'

RSpec.describe Team do
  it 'has a name' do
  expect(Team.new('name')).to respond_to :name
  end

  it 'has a list of players' do
    expect(Team.new('name').players).to be_kind_of Array
  end

  it 'is favored if it has a celebrity in it' do
    expect(Team.new('Random name', ['Celebrity Joe', 'John Doe'])).to be_favored
  end

  it 'complains if there is a bad word in the name' do
    expect { Team.new('Bad word') }.to raise_error
  end

  context 'given a bad list of players' do
    let(:bad_players) { {} }

    it 'fails to create' do
      expect { Team.new('name', bad_players).players }.to raise_error
    end
  end
end
