# Music-Maker

# Key Relationships

I thought that I would list the keys first, displayed as an array [1..12] which would be the twelve semitones.

Assume key = C (major/minor treated later)

When setting the key (eg. C), this could then display the related keys automatically.

This would be:
C (the tonic) [0] in array
G (V) [7] in array
F (IV) [5] in array
A (vi) [9] in array

When a user selects the key, these relationships could then be selected to join a group of selected chords.

Key_select = C [0]
Key_Chords = [0,7,5,9]
Key_Chords = [C,G,F,A]

If Key_select = D [2]
Key_Chords = [(0+2),(7+2),(5+2),(9+2)] etc
Key_Chords = [D,A,G,B]

# Random Chord Progression

Because of the relationship of these chords, they can be then randomly assigned into an order, which could then be returned.

Key_Chords.random
>> F,G,A,C etc.

# Play Chord Progression

For simplicity sake, we could then convert this into a Tab form for guitar (simplicity) to play (haven't got into MIDI yet!)
