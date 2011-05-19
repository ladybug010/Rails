Given /^I have an account named "([^\"]*)" with number "([^\"]*)" with balance "([^\"]*)"$/ do |name, number, balance|
  Account.create!(:name => name, :number => number, :balance => balance.to_f)
end

Given /^the following shows:$/ do |shows|
  Show.create!(shows.hashes)
end

When /^I delete the (\d+)(?:st|nd|rd|th) show$/ do |pos|
  visit shows_path
  within("table tr:nth-child(#{pos.to_i+1})") do
    click_link "Destroy"
  end
end

Then /^I should see the following shows:$/ do |expected_shows_table|
  expected_shows_table.diff!(tableish('table tr', 'td,th'))
end
