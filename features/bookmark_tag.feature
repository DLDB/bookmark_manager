Feature: Bookmark_tag
  In Order to group links
  As a user
  I want to be able to label my bookmarks with tags

Scenario: when there are tags
  Given there is one bookmark
  And it has a tag
  When I am on the homepage
  Then I should see a tag attached to Makers Academy bookmark