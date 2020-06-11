require 'music_maker'

describe Key do
    describe 'initialize' do
        it 'creates a key based on user input' do
            new_key = Key.new('C')
            expect(new_key).to be_an_instance_of Key
        end
    end
end
