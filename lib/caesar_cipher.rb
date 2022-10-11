def caesar_cipher(str,x)
    tab = str.split("")
    for i in 0...tab.length
            if tab[i].match?(/[a-z]/) # 97 < ASCII > 122
                tab[i] = tab[i].ord + x
                if tab[i] > 122
                    tab[i] -= 26
                end
                tab[i] = tab[i].chr  
            elsif tab[i].match?(/[A-Z]/) # 65 < ASCII > 90
                tab[i] = tab[i].ord + x
                if tab[i] > 90
                    tab[i] -= 26
                end
                tab[i] = tab[i].chr
            end
    end
    return tab.join("")
end

# puts caesar_cipher("textE texte",3)
# puts caesar_cipher("texte1",5)
# puts caesar_cipher("Gru?!Du",6)