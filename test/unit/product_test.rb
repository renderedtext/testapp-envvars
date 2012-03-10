require 'test_helper'

class ProductTest < ActiveSupport::TestCase

  def test_presence_of_name
    product = Product.new(:price => 12.48)
    assert product.invalid?, "Product without a name should be invalid"
  end

  def test_presence_of_price
    product = Product.new(:name => 'Some Product')
    assert product.invalid?, "Product without a name should be invalid"
  end

end
