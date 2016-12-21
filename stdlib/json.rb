require 'json'

class JsonTester
  def test
    data = { do: 'C', re: true, mi: 3 }
    json_data = '{"do": "C", "re": true, "mi": 3}'

    # result = JSON.generate(data)

    result = JSON.parse(json_data)

    # generates a json with whitespace
    result = JSON.pretty_generate(data)

    puts result
  end
end

json = JsonTester.new
json.test

