assert if we create product without attributes then it should contain errors based on our validations
  assert product.errors[:title].any?  # assert will pass if statement is true, if there are errors then this will be true.
there will be errors because we have validations to check presence of title

test fixture - environment for tests to run. Specification of initial contents of a model(s)
- specify model contents in fixture
