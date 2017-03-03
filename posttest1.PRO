

predicates
 nondeterm human(symbol)
 nondeterm hoby(symbol)
 nondeterm like(symbol,symbol)
 nondeterm mucician(symbol) 
 nondeterm writer(symbol)
 nondeterm is_mucician(symbol,symbol)
 %nondeterm is_writer(symbol,symbol)

clauses
  human(udin).
  human(joe).
  human(ina).
  human(oki).

  hoby(director).
  hoby(sing).
  hoby(novelist).
  hoby(violin). 
  
  like(udin, director).
  like(joe, sing).
  like(ina, violin).
  like(oki, novelist).

  mucician(sing).
  mucician(violin).
  writer(director).
  writer(novelist).
	
  is_mucician(Mucician,Y):-
  human(Mucician),
  hoby(Y),
  like(Mucician,Y),
  mucician(Y).

 % is_writer(Writer,Y):-
  %human(Writer),
  %hoby(Y),
  %like(Writer,Y),
  %writer(y).
 

goal
  is_mucician(Mucician,_).
  %is_writer(Writer,_).