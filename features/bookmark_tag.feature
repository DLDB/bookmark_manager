Feature: Bookmark_tag
  In Order to group links
  As a user
  I want to be able to label my bookmarks with tags

Scenario: when there are tags
  Given there are tags
  When I am on the homepage
  And there are bookmarks
  Then I should see tags attached