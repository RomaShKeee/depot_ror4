require 'rails_helper'

describe Product do
  
  before do
    @product = Product.new( title: 'Lorem Ipsum',
                            description: 'Wibbles are fun!',
                            image_url: 'lorem.jpg',
                            price: 19.95 )
  end

  subject { @product }

  it { should respond_to(:title) }
  it { should respond_to(:description) }
  it { should respond_to(:image_url) }
  it { should respond_to(:price) }

  it { should be_valid}

  describe "product price must be positive" do
    describe "with valid" do
      before { @product.price = 1}
      it { should be_valid }
    end

    describe "with invalid" do
      before { @product.price = -1}
      it { should_not be_valid }
    end

  end
end
