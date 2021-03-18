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
end