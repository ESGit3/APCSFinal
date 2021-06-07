# Final Project: Timed Minesweeper
3DSweeper by Ethan Shan

A 3 Dimensional Minesweeper. Minesweeper is a game where you locate and flag 
“Mines” based on tiles that indicate how many adjacent tiles contain mines. The game is won when the player has flagged all the mines, and is lost if the player uncovers a mine. In regular Minesweeper, there is a single 2D grid, with all mines on one level. In 3DSweeper, there are multiple layers to interact with, with mines varying from layer to layer, creating a type of minesweeper that requires more interactivity than before.

https://docs.google.com/document/d/1ZBqtkUcqR3IusByYlHBX7WjPMw7-TvlN1SfQf-54RXw/edit?usp=sharing
## Updates:

**May 22-23:** initialized the minesweeper project, and made it possible to display a grid of tiles of whatever size.
Goals to achieve by next commit: When tile is right clicked, a flag is placed

**May 28: ** many bugs:
able to detect tile click, but only in top left quadrant
flagging disappears right after click
possibly bc display is constantly looping, and ends up removing flags
flags do not show up in the right places

**May 30: ** bugs still exist, display is flickering, and only showing on top left quadrant

**June 2: ** Tiles can now be accurately clicked with the correct coordinates printed. Added new cover variable

**June 7: ** Massive improvements:
Tiles can be uncovered
Rule: uncovered tiles cannot be flagged, and flagged tiles cannot be uncovered.
Mines are placed, mines can be flagged, and when mine is clicked, all mines are revealed
Game end variable is made
Goals for next update: adjacent tile numbers


