% Sudoku Solver
%
% Hints:
% For subgrid of size n, subgrids can be identified by labels 1..n*n
% A cell (x,y) can be mapped to the subgrid labeled 1+(((x-1)/n)*n+(y-1)/n)

% Goal: generate 4x4 sudoku board.

#const n = 4.

% Generate
sudoku(A, B, X) :- initial(A, B, X).
{ sudoku(A, B, X) : X = 1..n } = 1 :- A = 1..n, B = 1..n, not initial(A, B, _).

% Test
:- sudoku(A, B, X), sudoku(A, C, X), B != C.
    % row uniqueness
:- sudoku(A, B, X), sudoku(C, B, X), A != C.
    % column uniqueness
% :- sudoku(A, B, X), sudoku(C, D, X), p(A, B) != p(C, D), 1 + (((A - 1) / 2) * 2 + (B - 1) / 2) = 1 + (((C - 1) / 2) * 2 + (D - 1) / 2).
    % subgrid uniqueness, apparently not needed for question 1a.
#show sudoku/3.
