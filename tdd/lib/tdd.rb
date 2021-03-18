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

end