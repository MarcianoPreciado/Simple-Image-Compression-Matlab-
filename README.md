# Simple-Image-Compression-Matlab-
Simple, somewhat inaccurate compression algorithm for images. 

It works by storing the only the red, green, or blue values for each pixel. 
They are stored in the format of:
| R G B R G B R G B ... |
| G B R G B R G B R ... |
| B R G B R G B R G ... |
| . . . . . . . . . .   |
| . . . . . . . . .   . |

Once decompressing, the values are then taken at each pixel for their color, 
the colors adjacent are averaged and taken as well.
Ex. node(i,j)
  G
G B R
  R
node(i,j).R = [color(i+1, j) + color(i, j+1)]/2;
node(i,j).G = [color(i, j-1) + color(i-1, j)]/2;
node(i,j).B = color(i, j)

If the current node is on an edge, only the available colors adjacent are taken.
