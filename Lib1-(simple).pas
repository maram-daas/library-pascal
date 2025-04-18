
Unit bib;

Interface

Function binSum(a,b:Integer): Integer;

Function pow(a,b:Integer): Integer;

Function asc(N:Integer): Integer;

Function circShift(n, nd:Integer): Integer;

Function decToBin(n : Integer): Integer;

Procedure drawcute;

Procedure DrawBorder;

Function fib(n:Integer): Integer;

Procedure SetColor(color: Byte);

Function npos(a : Integer) : Integer;

Function armstrong(a : Integer) : Boolean;

Function sumDiv(n : Integer): Integer;

Function npow(n : Integer): Integer;

Function conc(a, b : Integer): Integer;

Function extractd(a, p : Integer): Integer;

Function bintodec(a : Integer): Integer;

Procedure swapi(Var A, B: integer);

Function indmin (T: Array Of Integer; B1, B2: Integer): Integer;

function is_perfect(a: longint): boolean;

function is_prime(a: longint): boolean;

Implementation
Uses crt, Wincrt;

Function binSum(a,b:Integer): Integer;
Var
  resultat, carry, p, sum : Integer;
Begin
  resultat := 0;
  carry := 0;
  p := 1;
  Repeat
    sum := (a Mod 10)+(b Mod 10) + carry;
    resultat := resultat + (sum Mod 2)*P;
    p := p*10;
    carry := sum Div 2;
    a := a Div 10;
    b := b Div 10
  Until (a=0) And (b=0) And (carry=0);
  binSum := resultat;
End;

Function pow(a,b:Integer): Integer;
Var
  power, i : Integer;
Begin
  i := 1;
  power := a;
  Repeat
    i := i + 1;
    power := a*power;
  Until i = b;
  pow := power;
End;

Function asc(N:Integer): Integer;
Var
  R, I, M : Longint;
Begin
  R := 0;
  For I := 1 To 9 Do
    Begin
      M := N;
      While M <> 0 Do
        Begin
          If M Mod 10 = I Then
            R := 10 * R + I;
          M := M Div 10;
        End;
    End;
  asc := r;
End;

Function circShift;
Var
  i : Integer;

Function npow(n:Integer): Integer;
Var
  p : Integer;
Begin
  p := 1;
  Repeat
    n := n Div 10;
    p := p*10;
  Until (n Div 10)=0;
  npow := p;
End;

Function circularshift(n,npow : Integer): Integer;
Var
  a : Integer;
Begin
  a := n Div npow;
  n := (n Mod npow)*10 + a;
  circularshift := n;
End;
Begin
  i := 0;
  Repeat
    i := i + 1;
    n := circularshift(n, npow(n));
  Until (i=nd);
  circshift := n;
End;

Function decToBin ;
Var
  m, s, i, a : Longint;
Begin
  i := 0;
  s := 0;
  a := 1;
  Repeat
    m := (n Mod 2)*a;
    n := n Div 2;
    s := s + m;
    i := i + 1;
    a := a*10;
  Until n=0;
  decToBin := s;
End;

Procedure drawcute;
Var
  i : Integer;
Begin
  For i:= 1 To 77 Do
    Begin
      Write('*');
    End;
  Writeln;
End;

Procedure DrawBorder;
Var
  i: Integer;
Begin
  For i := 1 To 77 Do
    Begin
      Write('-');
    End;
  Writeln;
End;

Function fib;
Var
  i, e, f, g : Integer;
Begin
  If (n<=2) Then
    fib := 1
  Else
    Begin
      i := 1;
      e := 0;
      f := 1;
      While (i < n) Do
        Begin
          i := i+1;
          g := e + f;
          e := f;
          f := g;
        End;
      fib := g;
    End;
End;

Procedure SetColor;
Begin
  TextColor(color);
End;
Function npos;
Var
  nd: Integer;
Begin
  nd := 0;
  Repeat
    a := a Div 10;
    nd := nd +1;
  Until a = 0;
  npos := nd;
End;
Function armstrong;
Var
  t, d, s, n : Integer;
  isArmstrong : Boolean;
Begin
  Readln(a);
  t := a;
  s := 0;
  n := npos(a);
  Repeat
    d := t Mod 10;
    s := s + pow(d, n );
    t := t Div 10;
  Until t = 0;
  If s = a Then
    isArmstrong := True
  Else
    isArmstrong := False;
  armstrong := isArmstrong;
End;
Function sumDiv;
Var
  i, sum: Integer;
Begin
  If (n=1) Then
    sum := 1
  Else
    Begin
      sum := (n+1);
      i := 2;
      For i := 2 To (n Div 2) Do
        If (n Mod i)=0 Then
          sum := (sum + i);
    End;
  sumDiv := sum;
End;
Function npow;
Var
  p : Integer;
Begin
  p := 1;
  While n <> 0 Do
    Begin
      n := n Div 10;
      p := p*10;
    End;
  npow := p;
End;

Function conc;
Var
  c, p : Integer;
Begin
  p := npow(b);
  c := a*p + b;
  conc := c;
End;
Function extractd;
Var
  d, i : Integer;
Begin
  i := 0;
  Repeat
    d := a Mod 10;
    i := i+1;
    a := a Div 10;
  Until i = p;
  extractd := d;
End;
Function bintodec;
Var
  s, p : Integer;
Begin
  s := 0;
  p := 1;
  Repeat
    s := s + ((a Mod 10)*p);
    a := a Div 10;
    p := P*2;
  Until a = 0;
  bintodec := s;
End;
Procedure swapi;
Var
Tmp : integer;
Begin
Tmp := A;
A := B;
B := Tmp;
End;
Function indMin;
Var
  Ind , j : Integer;
Begin
  Ind := B1;
	for j := b1+1 to b2 do
	begin
      If T[j] < T[ Ind ] Then
        Ind := j;
	end;
  indMin := Ind;
End;
function is_perfect(a: longint): boolean;
// Returns true if a number is perfect, false otherwise
begin
  if ((sumDiv(a) - a) = a) and (a > 1) then
    is_perfect := true
  else
    is_perfect := false;
end;
function is_prime(a: longint): boolean;
// Returns true if a is prime, false otherwise
var
  i: longint;
  prime: boolean;
begin
  if a <= 1 then
    prime := false // Special case for numbers <= 1
  else
  begin
    prime := true;
    for i := 2 to Trunc(Sqrt(a)) do
      if a mod i = 0 then
      begin
        prime := false;
        Break;
      end;
  end;
  is_prime := prime;
end;
end.
