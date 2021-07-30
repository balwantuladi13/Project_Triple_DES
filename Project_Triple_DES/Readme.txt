##########################################################################################
Project Description :

  It is a continuous process of encryption-decryption-encryption ,  
where we change a plain text to cipher text using one key (K1) and again convert it to a 
different plain text using another key (K2) and again change the 2nd plain text to cipher 
text with the first key (K1).
It helps us to hide the original message ( plain text) from reading by an unauthorised 
system. It is mainly a part of data protection.

##########################################################################################
Requirements:

  To run this code "Modelsim student edition" is required for verilog codes and C compiler is 
required for "TextToBinary.c"

  For "TextToBinary.c" code the input could be any charecter as well as integer(taken as a 
charecter) , but have to be in a file "input.txt" and the output will show in "output.txt".

  The input should be made of 8 characters only, if more than 8 needed the process should run 
multiple times. Less than 8 characters in always welcome.

  The keys (K1 and K2) pre specified inside the code itself, but you can always choose your 
own keys as long as it follows the same format.
  
###########################################################################################

Reference:

  For our project outline and pre defined s-box structures we took halp from "The DES Algorithm 
Illustrated by J. Orlin Grabbe"

link: http://page.math.tu-berlin.de/~kant/teaching/hess/krypto-ws2006/des.htm

###########################################################################################