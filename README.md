# README

E-commerce site. Uses `bcrypt` and `materialize`.


To set up:

* Clone the repository locally.

* Delete the Gemfile.lock file.

* `bundle install`  

* `rails db:setup`

Refactoring currently completed.

* Ensure that users can't order a negative number of items.

* Allow other than whole dollar amounts for admin product creation (for instance, 3.99).

* Add admin links to navbar so admins can easily add products.


* Users should be able to add products to their shopping cart from the index page with AJAX. The item should be added to the shopping cart and the number of items in the cart (shown in the navbar) should update.

* Users should be able to click on a product and show/hide the product detail using AJAX. The product detail should include an image (either Paperclip or an image link), the description, and any other fields you choose to add.

* Users should be able to remove items from the shopping cart without a page reload. The "delete" link should result in the item being removed from the shopping cart and the total price being updated.
