class Book
# write your code here
    # getter and setter
    attr_accessor :title

    def title
        # array of words not to capitalize
        small_words = ["the", "a", "an", "and", "in", "of"]

        # array of words split from title
        split_title = @title.split(" ")

        # if theres only one word then capitalize and return it
        if (split_title.length == 1)
            split_title[0] = split_title[0].capitalize
        else
            split_title.map! do |word|
                if !(small_words.include?(word))
                    word.capitalize
                # don't capitalize any word thats present in small_words array
                else
                    word
                end
            end
            # always capitalize first word of title
            split_title[0] = split_title[0].capitalize
        end
        
        # return joined title
        @title = split_title.join(" ")
    end
end
