# Assignment 2 - Puzzle Game
#
# CSC148 Fall 2015, University of Toronto
# Instructor: David Liu
# ---------------------------------------------
"""Word ladder module.

Your task is to complete the implementation of this class so that
you can use it to play Word Ladder in your game program.

Rules of Word Ladder
--------------------
1. You are given a start word and a target word (all words in this puzzle
   are lowercase).
2. Your goal is to reach the target word by making a series of *legal moves*,
   beginning from the start word.
3. A legal move at the current word is to change ONE letter to get
   a current new word, where the new word must be a valid English word.

The sequence of words from the start to the target is called
a "word ladder," hence the name of the puzzle.

Example:
    Start word: 'make'
    Target word: 'cure'
    Solution:
        make
        bake
        bare
        care
        cure

    Note that there are many possible solutions, and in fact a shorter one
    exists for the above puzzle. Do you see it?

Implementation details:
- We have provided some starter code in the constructor which reads in a list
  of valid English words from wordsEn.txt. You should use this list to
  determine what moves are valid.
- **WARNING**: unlike Sudoku, Word Ladder has the possibility of getting
  into infinite recursion if you aren't careful. The puzzle state
  should keep track not just of the current word, but all words
  in the ladder. This way, in the 'extensions' method you can just
  return the possible new words which haven't already been used.
"""
from puzzle import Puzzle


CHARS = 'abcdefghijklmnopqrstuvwyz'


class WordLadderPuzzle(Puzzle):
    """A word ladder puzzle."""
    # TODO: add to this list of private attributes!
    # === Private attributes ===
    # @type _words: list[str]
    #     List of allowed English words

    def __init__(self, start, target, _word_ladder=[]):
        """Create a new word ladder puzzle with given start and target words.

        Note: you may add OPTIONAL arguments to this constructor,
        but you may not change the purpose of <start> and <target>.

        @type self: WordLadderPuzzle
        @type start: str
        @type target: str
        @type _word_ladder: list[str]  #by default it is an empty list (before solve).
        @rtype: None
        """
        # Code to initialize _words - you don't need to change this.
        self._words = []
        with open('wordsEn.txt') as wordfile:
            for line in wordfile:
                self._words.append(line.strip())
        self.start = start
        self.target = target
        if _word_ladder == []:
            self._word_ladder = [start]
        else:
            self._word_ladder = _word_ladder + [start]
        #if self._word_ladder == []:
        #self._word_ladder.append(self.start)
        #print(self._word_ladder)
        #self._word_ladder.append(self.start)
        #print(self._word_ladder)

        # TODO: Complete the constructor.

    def __str__(self):
        """Return a human-readable string representation of <self>.

        @type self: WordLadderPuzzle
        @rtype: str

        >>> w = WordLadderPuzzle('make', 'cure')
        >>> print(w)
        Present word is: make
        Our goal word is: cure
        We now have the Word Ladder:
        make
        """
        s = 'Present word is: ' + self.start + '\n' + 'Our goal word is: ' + self.target + '\n' + 'We now have the Word Ladder: '
        for i in self._word_ladder:
            s = s + '\n' + i
        return s

    def is_solved(self):
        """Return whether <self> is solved.

        A WordLadder Puzzle is solved if its present word is the goal word.

        @type self: WordLadderPuzzle
        @rtype: bool
        """
        return self.start == self.target

    def extensions(self):
        """Return a list of possible new states after a valid move.

        The valid move must change exactly one character of the
        current word, and must result in an English word stored in
        self._words.

        You should *not* perform any moves which produce a word
        that is already in the ladder.

        The returned moves should be sorted in alphabetical order
        of the produced word.

        @type self: WordLadderPuzzle
        @rtype: list[WordLadderPuzzle]
        """
        #self._word_ladder.append(self.start)
        goal_len = len(self.target)  # the length of the target word.
        same_num_words = []  # A list of words that has the same number of letters as the original word.
        returned_words = []
        returned_wlp = []
        for i in self._words:  # Find the word has the same length of the goal word.
            if len(i) == goal_len and i not in self._word_ladder:
                same_num_words.append(i)
        for i in same_num_words:
            if differences(i, self.start) == 1 and i not in self._word_ladder:  # Find the word that has one letter differences.
                returned_words.append(i)
        for i in returned_words:
            returned_wlp.append(WordLadderPuzzle(i, self.target, self._word_ladder))
            #print(self._word_ladder)
            #returned_wlp.append(WordLadderPuzzle(i, self.target))
        return returned_wlp
        pass

    def move(self, move):
        if self.is_solved():  # Puzzle must not be solved.
            print('The puzzle must not been solved!')
            raise ValueError
        elif len(move) != len(self.target):
            print('The length of the word must be coherent!')
            raise ValueError
        #elif differences(move, self.start) != 1:
            #print('You can only change one letter in one move!')
            #raise ValueError
        else:
            #for letters in move:
                #if letters not in CHARS:
                    #print('The word you typed is not in correct format!')
                    #raise ValueError
            return WordLadderPuzzle(move, self.target, self._word_ladder)

# ------------------------------------------------------------------------
# Helper function for method 'extensions'
# ------------------------------------------------------------------------


def differences(one_word, another_word):
    """ Return the number of different letters in one word.
        Precondition: the length of those words must be the same.
    :param one_word: str
    :param another_word: str
    :return: bool
    """
    assert len(one_word)==len(another_word)
    num = 0
    for i in range(len(one_word)):
        if one_word[i] != another_word[i]:
            num = num + 1
    return num


