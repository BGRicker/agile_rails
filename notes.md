assert if we create product without attributes then it should contain errors based on our validations
  assert product.errors[:title].any?  # assert will pass if statement is true, if there are errors then this will be true.
there will be errors because we have validations to check presence of title

test fixture - environment for tests to run. Specification of initial contents of a model(s)
- specify model contents in fixture

default_scope applies to all queries taht start with specified model
(sort, etc.)
default scope must now be in block:
default_scope :order => 'title' #now:
default_scope { order('titlet') }

in app/views/store/index.html.erb =>
<%= sanitize product.description %> # allows us to safely add HTML stylings
image_tag helper method generates html <img> tag using image source as argument



  def current_cart
    Cart.find(session[:cart_id])
  rescue ActiveRecord::RecordNotFound
    cart = Cart.create
    session[:cart_id] = cart.id
    cart
  end

#get cart id from session object, attempt to find cart to corresponding id
#if no cart is found (will return nil), create new and store id into session
#then return new cart

# method is private becuase this makes method only available to other controllers
#prevents Rails from ever making it available as an action on the controller

has_many => linked to cart as each line item contains reference to cart_id
belongs_to => children of rows in other table, no child can exist
without corresponding owner (if table has foreign key, corr. model belongs_to)

dependent destroy => line items dependent on existence of cart. If we
destroy the cart, deleting from DB, we'll destroy line items assoc. w/ cart

associations add navigation to model objects
li = LineItem.find(...)
puts "this line is for #{li.product.title}"

cart declared to have many line items, ref as collection from cart object
cart = Cart.find(...)
puts "This car thas #{cart.lien_items.count} line items"

hook method - rails calls auto at given point in obj. life
  ensure_not_referenced_by_line_item in product model

you have direct access to errors object, same as validates stores errors
errors.add(:base, "here's an error message")
return false

errors can be associated with ind. attr. or base object itself

end at 9.3 - Iteration D3: Adding a Button
