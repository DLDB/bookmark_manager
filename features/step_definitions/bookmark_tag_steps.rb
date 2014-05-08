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

Given(/^there are tags$/) do
  Tag.create(:title => 'ruby')

end