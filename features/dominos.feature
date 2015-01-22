Feature: Order Dominos Pizza Online
  We want to step through a simple scenario for training

  Scenario: Check the Dominos home page
    When I visit the Dominos home page
  	Then I should click on order online link
  	Then I see the orders page
  	And I should click on delivery button and fill in all the required info
  	#When I visit the orders entree page
  	Then I should click on speciality pizza option 
  	And I should click the order button for Pacific Veggie Pizza
  	When I click on "No, Add to Order Now"
  	And I click on "Checkout" button
  	And I close the add 
  	And I click on "Continue Checkout" button
  	Then I will be taken to the orders payment page
  	And I will need to fill in all the required info 
