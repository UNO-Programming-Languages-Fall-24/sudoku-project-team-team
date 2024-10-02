#const nn = 4.

% Generate
sudoku(A, B, X) :- initial(A, B, X).
{ sudoku(A, B, X) : X = 1..nn } = 1 :- A = 1..nn, B = 1..nn, not initial(A, B, _).

% Test
:- sudoku(A, B, X), sudoku(A, C, X), B != C.
    % row uniqueness
:- sudoku(A, B, X), sudoku(C, B, X), A != C.
    % column uniqueness

#show sudoku/3.
