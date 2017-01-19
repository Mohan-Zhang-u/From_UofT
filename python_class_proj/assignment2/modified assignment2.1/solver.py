# Assignment 2 - Puzzle Game
#
# CSC148 Fall 2015, University of Toronto
# Instructor: David Liu
# ---------------------------------------------
"""This module contains functions responsible for solving a puzzle.

This module can be used to take a puzzle and generate one or all
possible solutions. It can also generate hints for a puzzle (see Part 4).
"""
from puzzle import Puzzle


def solve(puzzle, verbose=False):
    """Return a solution of the puzzle.

    Even if there is only one possible solution, just return one of them.
    If there are no possible solutions, return None.

    In 'verbose' mode, print out every state explored in addition to
    the final solution. By default 'verbose' mode is disabled.

    Uses a recursive algorithm to exhaustively try all possible
    sequences of moves (using the 'extensions' method of the Puzzle
    interface) until it finds a solution.

    @type puzzle: Puzzle
    @type verbose: bool
    @rtype: Puzzle | None
    """
    if puzzle.is_solved():
        if verbose is True:
            print(puzzle)
        return puzzle
    elif not puzzle.is_solved() and len(puzzle.extensions()) == 0:
        if verbose is True:
            print(puzzle)
        return None
    for i in puzzle.extensions():
        temp = solve(i, verbose)
        if temp is not None:
            return temp
    return None



def solve_complete(puzzle, verbose=False):
    """Return all solutions of the puzzle.

    Return an empty list if there are no possible solutions.

    In 'verbose' mode, print out every state explored in addition to
    the final solution. By default 'verbose' mode is disabled.

    Uses a recursive algorithm to exhaustively try all possible
    sequences of moves (using the 'extensions' method of the Puzzle
    interface) until it finds all solutions.

    @type puzzle: Puzzle
    @type verbose: bool
    @rtype: list[Puzzle]
    """
    solve_complete_list = []
    #if verbose is False:
    if puzzle.is_solved():
        if verbose is True:
            print(puzzle)
            print('That is a solution to the puzzle, over.')
        return [puzzle]
    elif not puzzle.is_solved() and len(puzzle.extensions()) == 0:
        if verbose is True:
            print(puzzle)
        return []
    else:
        for i in puzzle.extensions():
            if verbose is True:
                print(i)
            solve_complete_list = solve_complete_list + solve_complete(i, verbose)
        return solve_complete_list


if __name__ == '__main__':
    from sudoku_puzzle import SudokuPuzzle
    s = SudokuPuzzle(
        [['E', 'C', '', '', 'G', '', '', '', ''],
         ['F', '', '', 'A', 'I', 'E', '', '', ''],
         ['', 'I', 'H', '', '', '', '', 'F', ''],
         ['H', '', '', '', 'F', '', '', '', 'C'],
         ['D', '', '', 'H', '', 'C', '', '', 'A'],
         ['G', '', '', '', 'B', '', '', '', 'F'],
         ['', 'F', '', '', '', '', 'B', 'H', ''],
         ['', '', '', 'D', 'A', 'I', '', '', 'E'],
         ['', '', '', '', 'H', '', '', 'G', 'I']]
    )
    #solution = solve_complete(s)
    #for i in solution:
        #print(i)
    #for i in solution:
        #print(i)
    #print(s._possible_letters(6, 8))
    #print(s._possible_letters(3, 2))

    #solution1 = solve_complete(s, True)

    #solution1 = solve_complete(s, True)
    from word_ladder_puzzle import WordLadderPuzzle
    w = WordLadderPuzzle('make', 'data')
    #for i in w.extensions():
        #for j in i.extensions():
            #print(j)
            #for k in j.extensions():
                #for mm in k.extensions():
                    #print(mm)
                #print(j)
    #print(w)
    solution = solve(w)
    print(solution)

