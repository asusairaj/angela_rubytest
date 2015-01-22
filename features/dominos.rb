When(/^I visit the Dominos home page$/) do
  visit('https://order.dominos.com')
end

Then(/^I should click on order online link$/) do
	click_link('Order Online')
end

Then(/^I see the orders page$/) do
  visit('https://order.dominos.com/en/pages/order/#/locations/search/')
end

Then(/^I should click on delivery button and fill in all the required info$/) do
	sleep 5
	if expect(page).to have_css('.Delivery')
		find('.Delivery').click
		select('House', from: 'Address_Type_Select')
		#fill_in('Location_Name', :with => 'Angela')
		fill_in('Street', :with => ' 2965 Mockernut Court')
		#fill_in('Address_Line_2', :with => '2965')
		fill_in('City', :with => 'Herndon')
		select('VA', from: 'Region')
		fill_in('Postal_Code', :with => '20171')
		find_button('Continue').click
		sleep 5
	end
end

When(/^I visit the orders entree page$/) do
  visit('https://order.dominos.com/en/pages/order/#/section/Food/category/AllEntrees/')
end


Then(/^I should click on speciality pizza option$/) do
	find(".qa-Specialty").click	
	
end

Then(/^I should click the order button for Pacific Veggie Pizza$/) do 
 order_link = all('.btn.media__btn.none--handheld')
 order_link[7].click
 sleep 10
end

When(/^I click on "(.*?)"$/) do |text|
 click_button(text)
end

When(/^I click on "(.*?)" button$/) do |text|
	#require "debug"
click_link(text)
end

When(/^I close the add$/) do
find(".js-nothanks").click
end

Then(/^I will be taken to the orders payment page$/) do
   expect(page).to have_css(".card__title", :text => "ORDER SUMMARY")
end

Then(/^I will need to fill in all the required info$/) do
  fill_in('First_Name', :with => 'Angela') 
  fill_in('Last_Name', :with => 'Susairaj')
  fill_in('Email', :with => 'angelasusai@gmail.com') 
  fill_in('Callback_Phone', :with => '7035992614') 
end
