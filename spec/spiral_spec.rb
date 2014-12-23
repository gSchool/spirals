require 'spiral'

describe 'Spiraler' do

  it "works for  1 and 4" do
    expected = [
      [1, 2, 3, 4],
      [12, 13, 14, 5],
      [11, 16, 15, 6],
      [10, 9, 8, 7],
    ]
    expect(Spiraler.call(1, 4)).to eq(expected)
  end

end
