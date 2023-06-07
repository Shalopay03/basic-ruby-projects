def stock_picker(stocks_schedule)
    #making sure array length fits
    unless(stocks_schedule.length>2)
        return "Wrong Input"
    end

    max_profit=stocks_schedule[1]-stocks_schedule[0]
    stock_buy_index = 0;
    stock_sell_index = 1;

    stocks_schedule.each_with_index do |stock, index|
        next_stock_index=index+1
        while(next_stock_index<stocks_schedule.length) do

            current_profit=stocks_schedule[next_stock_index]-stock  
            
            if current_profit>max_profit
                max_profit=current_profit
                stock_buy_index = index;
                stock_sell_index = next_stock_index;
            end

            next_stock_index+=1;
        end
    end
    

    picked_stocks = [stock_buy_index, stock_sell_index]
    
end


p stock_picker([17,3,6,9,15,8,6,1,10])