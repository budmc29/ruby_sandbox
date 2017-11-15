require 'cucumber/rspec/doubles'
require_relative '../../lib/team.rb'
require_relative '../../lib/competition.rb'

Given /There is a team called "([^"]*)"/ do |name|
  @team = Team.new(name)
end

Given /I have a competition with( no)? questions/ do |no_questions|
  @competition = Competition.new
  if no_questions
    @competition.questions = []
  else
    @competition.questions = [ stub ]
  end
end

When /a team enters the competition/ do
  @method = -> { @team.enter_competition @competition }
end

Then /I should( not)? see an error/ do |dont_raise|
  if dont_raise
    expect { @method }.to_not raise_error Competition::Closed
  else
    expect { @method }.to raise_error Competition::Closed
  end
end
