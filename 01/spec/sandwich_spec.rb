Sandwich = Struct.new(:taste, :toppings)

RSpec.describe 'An ideal Sandwich' do
  # before { @sandwich = Sandwich.new('delicius', []) }

  # def sandwich
  #   @sandwich ||= Sandwich.new('delicius', [])
  # end

  let(:sandwich) {Sandwich.new('delicius', [])}
  it 'is delicius' do
    taste = sandwich.taste
    expect(taste).to eq('delicius')
  end
 
  it 'lets me add toppings' do
    sandwich.toppings << 'cheese'
    toppings = sandwich.toppings

    expect(toppings).not_to be_empty
  end
end
