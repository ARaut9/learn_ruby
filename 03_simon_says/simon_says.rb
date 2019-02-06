#write your code here
def echo string
    string
end

def shout string
    string.upcase
end

def repeat string, how_many_times = 1
    new_string = string
    if how_many_times == 1
        how_many_times.times do
            new_string = new_string + " " + string
        end
    else
        how_many_times = how_many_times - 1
        how_many_times.times do
            new_string = new_string + " " + string
        end
    end
    new_string
end

def start_of_word word, pos = 1
    pos = pos - 1
    if pos == 0
        word[pos]
    else
        word[0..pos]
    end
end

def first_word string
    string = string.split(" ")
    string[0]
end

def titleize string
    string = string.split(" ")
    string[0] = string[0].capitalize
    string.each do |str|
        if(str.length >= 4)
        str.replace(str.capitalize)
        end
    end
    string.join(" ")
end
