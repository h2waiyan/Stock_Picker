def stock_picker(myarray) 
    best_profit = 0
    best_days = ''
    myarray.each_with_index do |price1, index1|
        myarray.each_with_index do |price2, index2|
            if (price2 - price1) > best_profit && index1 < index2
                best_profit = price2 - price1 
                best_days = [index1, index2]
            end
        end
    end
    p best_days
    return best_days
end

stock_picker([17,3,6,9,15,8,6,1,10])
