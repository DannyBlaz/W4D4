require "tdd"
require "rspec"

describe Array do
    describe "#my_uniq" do
        subject(:array) {Array.new}
        it "remove duplicate elements in an array" do
            expect(array.my_uniq).to eq(array.uniq)
        end
    end

    describe "#two_sum" do 
        # array = [-1, 0, 2, -2, 1]
        subject(:array) {[-1, 0, 2, -2, 1]}
        it "return numbers that sum to zero" do 
            
        end
        it "return pairs" do
        end
        it "should return sorted pairs" do 

        end
    end





end