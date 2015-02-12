When(/^Filter "(.*?)" from Media Type Overlay$/) do |filter_option|
	
	find('.media-filter-link', :text => 'Filter').click
	find('.media-select-option', :text => filter_option).click
	find('.overlay-close-btn.top.close-media-filter').click
end

Then(/^I should see "(.*?)" heading$/) do |heading_name|
	expect(page).to have_css('.section-heading.media-page-heading', :text=> heading_name.upcase)

end



Then(/^I should see only "(.*?)" on the page$/) do |filter_type|
	if filter_type == "Videos"
		  expect(page).to have_css('.media-play-icon.media-icon')
		  expect(page).to_not have_css('.media-gallery-icon.media-icon')
		elsif filter_type == "Photos"
		  expect(page).to_not have_css('.media-play-icon.media-icon')
		  expect(page).to have_css('.media-gallery-icon.media-icon')
		  
    
    end 
 end

Then(/^I should see both videos and photos on the page$/) do
	expect(page).to have_css('.media-play-icon.media-icon')
	expect(page).to have_css('.media-gallery-icon.media-icon')
  
end
