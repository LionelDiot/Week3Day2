
def max_diff_array(price_array)
  max_diff_array=[]#array de max_diff stockant les meilleurs benefs
  price_array.each_with_index {|buy_price,buy_index|
    max_diff=[0,0]#[benefice, index dans le price array]
    for i in (buy_index..(price_array.length-1))
      if (price_array[i]-buy_price>max_diff[0])
        max_diff[0]=price_array[i]-buy_price
        max_diff[1]=i 
      end
    end
    max_diff_array[buy_index]=max_diff
  }
  return max_diff_array
end

def max_index(max_diff_array)
  best_diff=max_diff_array[[0][0]][0]
  best_index=[0,0]
  max_diff_array.each_with_index{|i,i_index|
    if i[0]>best_diff
      best_index[0]=i_index
      best_index[1]=i[1]
      best_diff=i[0]
      
    end
    
  }

  return best_index
end

def day_trader(price_array)
  max_index(max_diff_array(price_array))
end



