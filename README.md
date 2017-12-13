
# _E-Commerce Adventure_

#### _Ruby on Rails Ajax - 12.8.17_
#### By Sara Spink

#### Technoligies Used:

- Ruby on Rails
- AJAX
- SCSS/CSS
- HTML

### Description

_A Basic E-commerce site refactored with Ajax_

### Set-Up Instructions
- Clone repository, cd into repository
- In your terminal $ bundle install
- In your terminal $ rails db:create
- In your terminal $ rails db:migrate
- In your terminal $ rails db:test:prepare
- In your terminal $ rails db:seed
- In your terminal $ rails s
- In your browser navigate to localhost:3000



### Refactored Code
- Users can remove items from the shopping cart without a page reload. (The "delete" link results inn the item being removed from the shopping cart and the total price being updated using AJAX).
- Users can add products to their shopping cart from the index page with AJAX. The number of items in the cart (shown in the navbar) updates without a page reload.
- Users can click a product name on the products index to show its details at the top of the page.
- order_item model includes a validation that does not add items to the cart if the user enters a number less than or equal to zero.
- products index view has added options on number field to force user to enter a number between 1 and 50
- Flash messages appear to notify user of successful sign-up, sign-in, and sign-out
- A user can only create products if they are logged in as an admin. A flash message notifies them that they must log in as an admin to create projects
- Fixed row height issue on columns
- Add validations for product name and description to product class



### Support and contact details

_If you have any updates or suggestions please make a contribution to my repository or  contact [Sara](spinkbot@gmail.com) directly._

### License

_© 2017 Sara Spink_
