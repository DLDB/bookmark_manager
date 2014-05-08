require 'spec_helper'

    feature "User adds a new link" do

  before(:each) do
    Link.create( :url => "https://www.makersacademy.com/",
                 :title => "Makers Academy",
                 :tags => [Tag.first_or_create(:text => 'education')])
    Link.create( :url => "https://www.google.com",
                 :title => "Google",
                 :tags => [Tag.first_or_create(:text => 'search')])
    Link.create( :url => "https://www.bing.com",
                 :title => "Bing",
                 :tags => [Tag.first_or_create(:text => 'search')])
    Link.create( :url => "https://www.code.org",
                 :title => "Code.org",
                 :tags => [Tag.first_or_create(:text => 'education')])
  end

        scenario "when browsing the homepage" do
            expect(Link.count).to eq 4
            visit '/'
            add_link("https://www.makersacademy.com/", "Makers Academy")
            expect(Link.count).to eq 5
            link = Link.first
            expect(link.url).to eq("https://www.makersacademy.com/")
            expect(link.title).to eq("Makers Academy")
        end

        scenario "with a few tags" do
            visit '/'
            add_link("https://www.makersacademy.com/", "Makers Academy", ["education","ruby"])
            link = Link.last
            expect(link.tags.map(&:text)).to include("education")
            expect(link.tags.map(&:text)).to include("ruby")
        end

        scenario "filtered by a tag" do
            visit '/tags/search'
            expect(page).not_to have_content("Makers Academy")
            expect(page).not_to have_content("Code.org")
            expect(page).to have_content("Google")
            expect(page).to have_content("Bing")
        end
            


    def add_link(url, title, tags=[])
        within('#new-link') do
        fill_in 'url', :with => url
        fill_in 'title', :with => title
        fill_in 'tags', :with => tags.join(' ')
        click_button 'Add link'
        end
    end

end