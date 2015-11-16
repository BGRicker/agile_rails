require 'test_helper'

class ProductTest < ActiveSupport::TestCase
  test "product attributes must not be empty" do
    product = Product.new
    assert product.invalid?
    assert product.errors[:title].any?
    assert product.errors[:description].any?
    assert product.errors[:price].any?
    assert product.errors[:image_url].any?
  end

  test "product price must be positive" do
    product = Product.new(:title        => "My Book Title",     # create new product
                          :description  => "yyy",
                          :image_url    => "zzz.jpg")
    product.price = -1                                          # set price to negative one, validations should catch this
    assert product.invalid?                                     # check if that's invalid, if it's invalid then this passes
    assert_equal "must be greater than or equal to 0.01",
      product.errors[:price].join('; ')

    product.price = 0                                           # set price to zero, validations should catch this
    assert product.invalid?                                     # check if that's invalid, if it's invalid then this passes
    assert_equal "must be greater than or equal to 0.01",
      product.errors[:price].join('; ')

    product.price = 1                                           # set price to 1, allowed by validations
    assert product.valid?                                       # this price should be valid
  end

end
