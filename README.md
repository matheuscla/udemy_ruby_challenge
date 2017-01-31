# Ruby on Rails Challeng

**Requirements**

The main functions of the app are:
- I should be able to see Names, Addresses for family and friends (hint: alpha blog)
- I should be able to search for addresses in a search box - either by name or email address (hint: stock tracker)
- I should be able to click a button to print a label for the address in good format - or multiple addresses per page (extra credit). I should be able to edit the name field, or add & family of this address label, the default should be the account holders first and last name
The supporting functions you'll need to implement in order to offer this:
- Family members or friends should be able to create accounts for themselves in the app (both devise or regular authentication system built from scratch accepted, email authentication extra credit)
- They should be able to add First Name, Last Name, MI, Address
- Address should be in the format of Address 1, Address 2, City, Zip and Country
- Optional - Telephone numbers
- They should be able to edit their information
- They should be able to delete their information
- Only family members or friends themselves will be able to edit their own information, however, address information can be seen by other family members or friends
- All members should have access to the main functions of the app listed above
- Only you (the admin, or anyone else you designate as admin) should be able to remove people's accounts
- Only you (the admin, or anyone else you designate as admin) should be able to edit/update other people's information
Things you may want to cover:

* Ruby version **2.3.1**

# Instructions
 * Clone the project
 * Run bundle install
 * rails db:create && rails db:migrate
 * rails s
