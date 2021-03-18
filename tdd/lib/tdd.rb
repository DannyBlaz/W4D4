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
        s_stock = self.first
        l_stock = 0

        self.each_with_index do |ele, i|
            l_stock = i if ele > l_stock
            s_stock = i if ele < s_stock
        end

        [s_stock, l_stock]
    end
end

