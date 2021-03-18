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

describe TowerOfHanoi do
    subject(:)
    describe "#valid_move?" do
        it "should take two stacks as arg" do 
        end
        it "should raise an error if origin stack is empty" do 
            expect{}.to raise_error("STACK IS EMPTY")
        end
        it "larger discs cannot be stacked on smaller discs" do
            expect{}.to raise_error("INVALID MOVE")
        end
    end
    describe"#move" do
        it "should get input from player" do
        end
        it "should call valid move" do 
        end
        it "should move top plate to selected stack" do 
        end
    end
    describe "#won?"
        context "it should return true"
        it "should "
    end
    # platform (arrays)
    # discs (nums)
    # move method 
        # only valid if smaller num behind smaller num (rev sorted)
    # won? method
        # if target arr is full and in rev sorted order
end