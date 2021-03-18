require "tdd"
require "rspec"

describe Array do
    describe "initialize" do
        subject(:array) {Array.new}
        it "remove duplicate elements in an array" do
            expect(array.my_uniq).to eq(array.uniq)
        end
    end




end