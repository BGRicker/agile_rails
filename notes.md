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



