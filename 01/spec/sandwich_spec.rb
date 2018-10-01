Rspec.describe 'An ideal Sandwich' do
  it 'is delicius' do
    sandwich = Sandwich.new('delicius', [])
    taste = sandwich.taste
    expect(taste).to eq('delicius')  
  end
end