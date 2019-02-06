#write your code here
def ftoc temperature_in_fahrenheit
    temperature_in_celsius = (temperature_in_fahrenheit.to_f - 32) * 5/9
end

def ctof temperature_in_celsius
    temperature_in_fahrenheit = temperature_in_celsius.to_f * 9/5 + 32
end
