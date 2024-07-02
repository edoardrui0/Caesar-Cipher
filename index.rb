def caesar_cipher(str, shift)
    shifted_str = str.chars.map do |char|
        if char.ord.between?(65,90)
            (((char.ord - 65 + shift) % 26) + 65).chr
        elsif char.ord.between?(97,122)
            (((char.ord - 97 + shift) % 26) + 97).chr
        else
            char
        end
    end
    p shifted_str.join
end

caesar_cipher("Hello, world!", 2)