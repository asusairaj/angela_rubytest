When(/^Go directly to "(.*?)" front$/) do |front_href|
  visit base_url(front_href)
end

Then(/^I should see "(.*?)" front$/) do |fronts_header|
  expect(page).to have_css(fronts_header)
end