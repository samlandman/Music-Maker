require 'music_maker'

describe Key do
    describe 'initialize' do
        it 'creates a key based on user input' do
            new_key = Key.new('C')
            expect(new_key).to be_an_instance_of Key
        end
        it 'finds the index of key in tones' do
            new_key = Key.new('C')
            expect(new_key.tonic_index).to eq 0
        end
        it 'finds the dominant A of D in tones' do
            new_key = Key.new('D')
            expect(new_key.dominant).to eq("A")
        end
        it 'finds the subdominant G of D in tones' do
            new_key = Key.new('D')
            expect(new_key.subdominant).to eq("G")
        end
        it 'finds the supertonic E of D in tones' do
            new_key = Key.new('D')
            expect(new_key.supertonic).to eq("E")
        end
        it 'finds the relative minor B of D in tones' do
            new_key = Key.new('D')
            expect(new_key.relative_minor).to eq("B")
        end
    end
end

describe Song do
    describe 'initialize' do
        it 'creates a new song' do
        new_song = Song.new
        expect(new_song).to be_an_instance_of Song
        end
    end
    describe 'chord progression' do
        it 'creates a new 4 chord progression in song' do
        new_key = Key.new
        puts new_key.key
        new_song = Song.new
        puts new_song.chord_progression
        expect(new_song.chord_progression.count).to eq(4)
        end
    end
end
