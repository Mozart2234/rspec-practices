class Coffee
  attr_accessor :price
  def initialize
    @price = 1.00
  end
  def ingredients
    @ingredients ||= []
  end

  def add(ingredient)
    ingredients << ingredient
    if (ingredient == :milk) 
      @price += 0.25
    end
    if ingredient == :suggar
      @price += 0.35
    end
  end
end

RSpec.describe "A cup of Coffee" do
  let(:coffee) { Coffee.new }

  it 'costs $1' do
    expect(coffee.price).to eq(1.00)
  end

  context "with milk add 0.25 cents" do
    before {coffee.add :milk}

    it 'cost $1.25' do
      expect(coffee.price).to eq(1.25)
    end
    context "and suggar add 0.35" do
      before {coffee.add :suggar}

      it "cost $1.50" do
        expect(coffee.price).to eq(1.60)
      end
    end
  end

end
