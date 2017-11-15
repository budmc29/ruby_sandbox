require 'rspec'
require_relative '../spec/support/matchers/team_support.rb'

require_relative '../lib/competition.rb'
require_relative '../lib/team.rb'

RSpec.describe Competition do
  let(:competition) { Competition.new }
  let(:team) { Team.new('Random name') }

  context 'having no question' do
    before { competition.questions = [] }

    it "doesn't accept any teams" do
      expect(competition).to_not allow_teams_to_enter
    end
  end

  context 'having questions' do
    before { competition.questions = [ title: 'Question' ] }
    subject { competition }

    it { should allow_teams_to_enter }
  end
end
