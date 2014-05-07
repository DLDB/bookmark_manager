
Given(/^there are no bookmarks$/) do
  Link.count == 0
end

Given (/^I am on (the home\s?page)/) do |page|
  visit '/'
end