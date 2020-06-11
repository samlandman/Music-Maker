@tones = ['C','C#','D','D','E','F','F','G','G','A','A','B']

class Key
    def initialize(key) #user sets a new key
        puts @tones
        @key = key
        #@position = @tones.index(@key)
    end
end

#key_tone=tones[@key]
