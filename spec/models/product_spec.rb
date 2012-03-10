require 'spec_helper'

describe Product do

  it "validates presence of name" do
    product = Product.new(:price => 12.38)
    product.should be_invalid
  end

  it "validates presence of price" do
    product = Product.new(:name => 'Some product')
    product.should be_invalid
  end

  it "PRODUCT_LIMIT env var is set to magic number 13" do
    ENV["PRODUCT_LIMIT"].should == "13"
  end

end
