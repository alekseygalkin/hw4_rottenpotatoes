# Add a declarative step here for populating the DB with movies.

Given /the following movies exist/ do |movies_table|
  movies_table.hashes.each do |movie|
    Movie.create!(movie)
  end
end

Then /^the director of "(.*)" should be "(.*)"/ do |movie, director|
  regexp = Regexp.new ".*Details about #{movie}.*Director:.*#{director}", Regexp::MULTILINE
  assert page.body.should =~ regexp
end
