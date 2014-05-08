# Given(/^there are tags$/) do
#   add_link("http://www.makersacademy.com/", "Makers Academy", ['education', 'ruby'])
#   link = Link.first
#   expect(link.tags).to include('education')
#    expect(link.tags).to include('ruby')
# end

# def add_link(url, title, tags={})
# 	within('#new-link') do
# 		fill_in 'url', :with => url
# 		fill_in 'title', :with => title
# 		fill_in 'tags', :with => tags.join('')
# 		click_button 'Add link'
# end


  
# end

Given(/^it has a tag$/) do
  Tag.create(:text => 'education')
  expect(Tag.count).to eq 1
end

# Then(/^I should see a tag attached to Makers Academy bookmark$/) do
  
# end