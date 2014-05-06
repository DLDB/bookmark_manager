Feature: Bookmark_list
	In order to free my memory
	As a person
	I want to see a list of bookmarks

Scenario: when there are no bookmarks
  Given there are no bookmarks
  When I am on the homepage
  Then I should see "currently no bookmarks"