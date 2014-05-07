Feature: Bookmark_list
	In order to free my memory
	As a person
	I want to see a list of bookmarks

Scenario: when there are no bookmarks
  Given there are no bookmarks
  When I am on the homepage
  Then I should see "currently no bookmarks"

Scenario: when there is a bookmark
  Given there is one bookmark
  When I am on the homepage
  Then I should see "Makers Academy"
  And I should not see "currently no bookmarks"