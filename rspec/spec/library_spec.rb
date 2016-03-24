require "spec_helper"

describe "Library object" do
  before :all do
    lib_obj = [
      Book.new("Book Name", "Author Name", :development),
      Book.new("Book Name 2", "Author Name 2", :web),
      Book.new("Book Name 3", "Author Name 3", :css),
      Book.new("Book Name 4", "Author Name 4", :development)
    ]

    File.open "book.yml", "w" do |file|
      file.write Yaml::dump lib_obj
    end
  end

  before :each do
      @lib = Library.new "books.yml"
  end
end
