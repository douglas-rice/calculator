# regex
# =~ /\d+\.\d+/

def int_or_float(num)
  if num % 1 == 0 
    return num.to_i
  else
    return num.to_f
  end
end