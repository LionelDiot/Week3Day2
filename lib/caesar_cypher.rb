def cyphering(string, key)

  return "give me a number between 0 et 26 next time" if !(key>=0&&key<=26) 

  chars_array=string.chars()
  chars_array.map! {|i|
  if 123>i.ord&&i.ord>96 
    (i.ord+key)>122 ? i=((i.ord)+key-26).chr : i=(i.ord + key).chr 
  elsif 91>i.ord&&i.ord>64
    (i.ord+key)>90 ? i=((i.ord)+key-26).chr : i=(i.ord + key).chr
  else 
    i=i
  end
  }
  return chars_array.join()
end



