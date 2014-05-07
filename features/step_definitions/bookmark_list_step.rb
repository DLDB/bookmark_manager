
Given(/^there are no bookmarks$/) do
  Link.count == 0
end

When (/^I am on the homepage/) do
  visit '/'
end

Then(/^I should see "(.*?)"$/) do |arg1|
  expect(page).to have_content(arg1)
end

Given(/^there is one bookmark$/) do
  Link.create(:url => "http://www.makersacademy.com", :title => "Makers Academy")
    expect(Link.count) == 1 
end

And(/^I should not see "(.*?)"$/) do |arg1|
  expect(page).not_to have_content(arg1)
end