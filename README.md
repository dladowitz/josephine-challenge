## Challenge Solution

Hi Josephine Team, first off thanks for designing a challenge that tests skills used daily on the job instead of asking about time complexity of Binary Trees. 

### Styling
I added a bunch of styling so I've deployed to heroku for easy viewing. I haven't tested assets while cloning the repo so I'd recommend just viewing the UI online rather than getting setup locally. 
<br>
You can log in here: [https://josephine-challenge.herokuapp.com/](https://josephine-challenge.herokuapp.com/).
<br>
**Email:** hello@josephine.com, **Password:** password
<br>

Just to be clear, I didn't design the layout or do the heavy front end work. I generally find great templates then pick and choose elements from them for an awesome result. In this case I used one template for the landing/sigin pages and another of the marketplace/dashboard. 


### Stories. 
All four stories are completed. For Story 2, I didn't really understand: 

> And I should see a message that says "You've successfully ordered this meal" if I haven't ordered that meal yet.

I interpreted this to mean you SHOULD see the message if you HAVE ordred the meal already.

### Testing
All new models and controllers are tested. Generally I'd like to add Capybara integrations tests, but didn't have time here. 


### Time Spent
For full transparency I went way over the time limits. 
I built all the stories by TDD, which took about 4 hours. 
(30 min was debugging a few setup/OS issues.)

I spent another 4 hrs on the styling. I figured styling was a bonus so felt fine going way over the time limit.

<br>
<br>
<br>





## Josephine Engineering Challenge Overview

### Background

Josephine is finally ready to start taking orders! Cooks from all around the world love the ability to post their meals online, but they're hungry for more. The goal of this challenge is to implement the features below, and create a simple meal ordering system.

The current state of the app includes a few simple elements which you'll be building off of. Namely, users and meals. From there, it's up to you to implement additional models and controllers as you see fit.

### Getting Started

1. Run `bundle install` to install the required gems.
2. Run `rake db:setup` to create the development and test postgres databases, and run initial migrations.
3. Run `rake db:seed` to load the initial seed data.
4. If everything is working at that point, run `rspec` to ensure all the existing tests are passing.

### Your Challenge

Implement the following features:

1. A user should be able to see all meals from other users
  - Given  I'm logged in as a user
  - When I visit the home page
  - Then I should be able to see all meals that aren't mine
  - And be able to click on a meal to see that meal's page
2. A user should be able to order a meal from a meal's page
  - Given I'm logged in as a user
  - And I visit a meal page for a meal that isn't mine
  - Then I should see a button that says "Order This Meal"
  - And I should see a message that says "You've successfully ordered this meal" if I haven't ordered that meal yet.
  - And I should not see an order button if I have already ordered this meal.
3. A user should be able to see their orders
  - Given I'm logged in as a user
  - And I have meals
  - When I visit the dashboard
  - Then I should see a list of my meals
  - And the number of orders, and total revenue next to each meal
4. A user should be able to see more information about orders for each meal
  - Given I'm logged in as a user
  - And I have meals
  - When I visit a meal page in my dashboard
  - Then I should see a list of people who have ordered that meal
  - And the total number of orders for this meal
  - And the total revenue for this meal

### What To Focus On

The most important goal of this challenge is to demonstrate your Rails skills. Show us you know Rails inside and out, can easily write idomatic code, and understand the APIs that Rails provides.

Next, remember to test! The current project code base has 100% coverage. Bonus points for keeping it that way as your solve the challenge.

Last, let the database do the heavy lifting. If it can be done in SQL, do it in SQL.

### What's Less Important

For the sake of this challenge, styling is a total bonus. Don't worry about making it look pretty.
	