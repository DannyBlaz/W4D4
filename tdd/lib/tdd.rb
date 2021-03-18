class Array
    def my_uniq
        new_arr = []

        self.each do |ele|
            unless new_arr.include?(ele)
                new_arr << ele
            end
        end
        
        new_arr
    end

    def my_two_sum
        new_arr = []
        self.each_with_index do |num1, i|
            self.each_with_index do |num2, j|
                new_arr << [i, j] if j > i && num1 + num2 == 0
            end
        end
        new_arr
    end

    def my_transpose
        transposed = Array.new(self.length) {Array.new(self.length)}

        self.first.each_with_index do |ele, ele_idx|
            self.each_with_index do |arr, arr_idx|
                transposed[ele_idx][arr_idx] = self[arr_idx][ele_idx]
            end
        end

        transposed
    end

    def stock_picker
        most_profitable = nil
        current = 0

        self.each_with_index do |price1, buy_day|
            self.each_with_index do |price2, sell_day|
                gain = price2 - price1
                if buy_day < sell_day && gain > current
                    current = gain
                    most_profitable = [buy_day, sell_day]
                end
            end
        end

        most_profitable
    end
end

