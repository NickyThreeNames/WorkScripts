=VLOOKUP($G2,'Full Polling Location v2.csv'!$A$2:$J$4877,6,FALSE)
=VLOOKUP($A2,'[Polling place match-up.xlsx]Report(38)'!$A$2:$H$4881,2,FALSE)

=if(isna(VLOOKUP(...)), "no match", VLOOKUP(...)) #insert "no match" if VLOOKUP fails


Formula 	Description (Result)
=SUM(IF(FREQUENCY(A2:A10,A2:A10)>0,1)) 	Count the number of unique number values in cells A2:A10, but do not count blank cells or text values (4)
=SUM(IF(FREQUENCY(MATCH(B2:B10,B2:B10,0),MATCH(B2:B10,B2:B10,0))>0,1)) 	
Count the number of unique text and number values in cells B2:B10 (which must not contain blank cells) (7)
=SUM(IF(FREQUENCY(IF(LEN(A2:A10)>0,MATCH(A2:A10,A2:A10,0),""), IF(LEN(A2:A10)>0,MATCH(A2:A10,A2:A10,0),""))>0,1)) 	
Count the number of unique text and number values in cells A2:A10 , but do not count blank cells or text values (6)