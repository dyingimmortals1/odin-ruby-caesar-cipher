def caesarc(text, shift)
 results = ""
 for i in 0...text.length do
    c = ""
    if text[i].ord >= 65 and text[i].ord <= 90
        c = (((text[i].ord - 65) + shift).modulo(26) + 65).chr
    else 
        c = (((text[i].ord - 97) + shift).modulo(26) + 97).chr
    end

    results = results + c
 end

return results
end
msg = caesarc("doGn", 4)
puts msg
