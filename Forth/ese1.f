Write two words called BAKE-PIE and EAT-PIE. 
The first word increases the number of vailable PIES by one. 
The second decreases the number by one and thanks you for the pie. 
But if there are no pies, it types "What pie?" (make sure you start out with no pies.) 

variable count 

: reset_count 0 count ! ;
: bake_pie 1 count +! ;
: eat_pie count @ 0> if ." mangio la torta " -1 count +! else ." nessuna torta " then ;