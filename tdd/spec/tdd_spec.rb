require "tdd"
require "rspec"

describe Array do
    describe "#my_uniq" do
        subject(:array) {Array.new}
        it "remove duplicate elements in an array" do
            expect(array.my_uniq).to eq(array.uniq)
        end
    end

    describe "#my_two_sum" do 
        subject(:array) {[-1, 0, 2, -2, 1]}
        it "return the indices of elements that sum to zero" do 
            expect(array.my_two_sum).to eq([[0, 4], [2, 3]])
        end
        it "return pairs" do
            expect(array.my_two_sum.all? {|ele| ele.length == 2}).to eq(true)
        end
    end

    describe "#my_transpose" do
        subject(:array) {[[0, 1, 2], [3, 4, 5], [6, 7, 8]]} 
        it "should convert between row oriented and column oriented orientation" do
            expect(array.my_transpose).to eq([[0, 3, 6], [1, 4, 7], [2, 5, 8]])
        end
    end

    describe "#stock_picker" do
        subject(:array) {[20, 18, 22, 20, 34, 23, 26]}
        it "should return the two best days to buy and sell" do
            expect(array.stock_picker).to eq([1, 4])
        end
    end

end