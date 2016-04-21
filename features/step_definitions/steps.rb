Then /^Navigate to ([^"]*)$/ do |url|
   $driver.get "#{url}"
  $driver.manage.window.maximize
  $driver.manage.timeouts.implicit_wait = 5
end

Then(/^Click ([^"]*) on Menu Bar$/) do |var|
  element = $driver.find_element(:xpath, "//div[@id='globalMastheadCategoryMenu']//a[text()='HOME']")
  element.click
  sleep 2
end

Then(/^Click subcategory Kitchen$/) do
  element = $driver.find_element(:xpath, "//ul[@id='firstNavSubCat']//a[text()='Kitchen']")
  element.click
  sleep 2
end

Then(/^Select first item from Now Trending$/) do
  element_ary = $driver.find_elements(:xpath, "//div[@class='thumbPadding']")
  first_element = element_ary[0]
  first_element.click
  sleep 2
end

Then(/^Select two items from drop down$/) do
  dropdown = $driver.find_element(:xpath, "//select[@class='productQuantity']")
  select_list = Selenium::WebDriver::Support::Select.new(dropdown)
  select_list.select_by(:text, '2')
end


Then(/^Click Add to Bag button$/) do
  element = $driver.find_element(:xpath, "//button[@class='ctaButton expand small addToBagButton' and text()='Add to Bag']")
  element.click
  sleep 5
end

Then /^Verify that ([^"]*) items added to Cart$/ do |var|
  element = $driver.find_element(:xpath, "//div[@class='atbPageBagTotalQty']")
  element1 = element.text
    if element1 == var
    puts "passed"
  else
    puts "failed"
  end
end

Then /^Close browser$/ do
    $driver.quit
end