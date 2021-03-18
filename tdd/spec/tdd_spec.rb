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
        # array = [-1, 0, 2, -2, 1]
        subject(:array) {[-1, 0, 2, -2, 1]}
        it "return the indices of elements that sum to zero" do 
            expect(:array.my_two_sum).to eq([[0, 4], [2, 3]])
        end
        it "return pairs" do
            expect(:array.my_two_sum.all? {|ele| ele.length == 2}).to eq(true)
        end
    end





end