require 'music_maker'

describe Key do
    describe 'initialize' do
        it 'creates a key based on user input' do
            new_key = Key.new('C')
            expect(new_key).to be_an_instance_of Key
        end
    end
    describe 'position' do
        it 'finds the position of key in tones' do
            new_key = Key.new('C')
            expect(new_key.position).to eq 0
        end
    end
end
