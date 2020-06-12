@@tones = ['C','C#','D','D#','E','F','F#','G','G#','A','A#','B']

class Key
    attr_accessor :key, :tonic, :tonic_index, :dominant, :subdominant, :supertonic, :relative_minor, :chordcollection
    
    def initialize(key = 'C') #user sets a new key, defaults to C if no key inputted
        @@key = key
        @tonic_index = @@tones.index(@@key)
        @chordcollection = [
            @tonic = @@tones[@tonic_index],
            @dominant = @@tones[@tonic_index - 5],
            @subdominant = @@tones[@tonic_index - 7],
            @supertonic = @@tones[@tonic_index - 10],
            @relative_minor = @@tones[@tonic_index - 3]
        ]
    end
end

class Song
    attr_reader :chord_progression, :chorus

    def initialize (new_key = Key.new)
        @key = new_key
    end

    def chord_progression #creates a new chord progression
        @chord_progression = @key.chordcollection.sort_by { rand }[0..3]
    end

    def chorus
        @chorus = [@key.chordcollection[0],@key.chordcollection[1],@key.chordcollection.sample,@key.chordcollection.sample].sort_by {rand}
    end

    def verse
        @verse = chord_progression
    end
end
