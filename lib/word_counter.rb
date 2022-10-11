dictionnary = ["below", "down", "go", "going", "horn", "how", "howdy", "it", "i", "low", "own", "part", "partner", "sit"]

def word_counter(str,dictionnary)
    my_Words_Array = str.split
    dictionnary_capitalize = dictionnary.map do |word|
        word.capitalize 
    end
    my_dictionnary = []
    my_words_count = []
    for x in 0...dictionnary.length
        count = 0
        for i in 0...my_Words_Array.length
            if my_Words_Array[i].include? dictionnary[x]
                count += 1
            elsif my_Words_Array[i].include? dictionnary_capitalize[x]
                count += 1
            end
        end
        if count != 0
            my_dictionnary.append(dictionnary[x])
            my_words_count.append(count)
        end
    end
    return Hash[my_dictionnary.zip my_words_count]
end

# print word_counter("below",dictionnary)
# print word_counter("Howdy partner, sit down! How's it going?",dictionnary)