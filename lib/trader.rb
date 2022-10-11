def day_trader(trader_array)
    temp_trader_array = []
    index_val_min = trader_array.index(trader_array.min)
    index_val_max = trader_array.index(trader_array.max)
    if index_val_min < index_val_max
        days = index_val_min,index_val_max
    else
        for i in index_val_min...trader_array.length
            temp_trader_array[i - index_val_min] = trader_array[i]
        end
        temp_index_val_max = temp_trader_array.index(temp_trader_array.max)
        days = index_val_min, temp_index_val_max + index_val_min
    end
    return days
end

# print day_trader([17, 3, 6, 9, 15, 8, 6, 1, 10])
# print day_trader([14, 3, 6, 1, 16, 8, 6, 2, 7])
# print day_trader([8, 5, 6, 19, 2, 7, 3, 18, 9])
# print day_trader([7, 3, 6, 2, 5, 8, 16, 4, 10])