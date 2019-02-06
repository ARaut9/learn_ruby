#write your code here
def translate string
    # if the string has more than one word split the string into multiple words
    if string.include?(" ")

        words_array = string.split(" ")
        
        words_array.map! do |word|
            # split each word into letters
            letters_array = word.split("")
            i = 0
            # push elements to last place until it's equal to following letters
            while !(letters_array[i].match(/[aeio]/))
                element = letters_array.shift
                letters_array.push(element)
            end
            word = letters_array.join + "ay "
            # if word has any capital letters at start then make starting letter capital
            if (word.match(/[A-Z]/))
                word = word.downcase.capitalize
            end
            word
        end

        # split last element of word_array and remove last element i.e. space
        last_word = words_array[-1].split("")
        last_word.pop
        words_array[-1] = last_word
        string = words_array.join

    # if the string is just a single word, only split the word into letters
    else
        letters_array = string.split("")
        i = 0
        while !(letters_array[i].match(/[aeio]/))
            element = letters_array.shift
            letters_array.push(element)
        end
        string = letters_array.join + "ay"
        if (string.match(/[A-Z]/))
            string = string.downcase.capitalize
        end
        string
    end
end