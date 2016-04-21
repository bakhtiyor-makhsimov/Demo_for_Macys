Feature: Demo Test Case for Macys
  @Macys
  Scenario: Add two items to the bag
    Then Navigate to http://www.macys.com/
    Then Click HOME on Menu Bar
    Then Click subcategory Kitchen
    Then Select first item from Now Trending
    Then Select two items from drop down
    Then Click Add to Bag button
    Then Verify that 2 items added to Cart
    Then Close browser
