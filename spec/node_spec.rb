require './app/node.rb'
describe Node do
  it 'exists' do
    node = Node.new('Keller')

    expect(node).to be_a(Node)
  end

  it '.surname' do
    node = Node.new('Keller')

    expect(node.surname).to eq('Keller')
  end

  it '.next_node' do
    node = Node.new('Keller')

    expect(node.next_node).to eq(nil)
  end
end
