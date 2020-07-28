require './app/linked_list'

describe LinkedList do
  it 'exists' do
    list = LinkedList.new

    expect(list).to be_a(LinkedList)
  end

  it '.head' do
    list = LinkedList.new

    expect(list.head).to eq(nil)
  end

  it '.append' do
    list = LinkedList.new
    
    list.append('Keller')

    expect(list.head).to be_a(Node)
    expect(list.head.next_node).to eq(nil)
  end

  it '.count' do
    list = LinkedList.new

    expect(list.count).to eq(0)

    list.append('Keller')

    expect(list.count).to eq(1)
  end

  it 'to_string' do
    list = LinkedList.new

    list.append('Keller')

    expect(list.to_string).to eq('The Keller family')
  end
end
