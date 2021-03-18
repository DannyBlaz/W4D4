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
        num = self.length
        new_arr = []

        self.each_with_index do |ele_1, i| #0
            ele = [] 
            ele_1.each_with_index do |ele_2, j|
                ele << ele_2 if j == i
            end
            new_arr << ele
        end

        new_arr
    end
end

# 00 01 02
# 10 11 12
# 20 21 22