

Unit bib2;
Interface

Const
  rows = 10;
  columns = 10;
Type
  t2d = Array[1.. rows, 1..columns] Of Integer;
Procedure fillArray(Var arr: Array Of Integer; Var size: Integer);
Procedure write1d(arr : Array Of Integer; size : Integer);
Procedure rand1d(Var arr : Array Of Integer; size, min, max : Integer);
Procedure read1d(Var arr: Array Of Integer; size : Integer);
Function rechV(tab : Array Of Integer; size, v: Integer): Boolean;
Function Nbev(tab : Array Of Integer; size, v : Integer): Integer;
Function maxtab(tab : Array Of Integer; size : Integer): Integer;
Function mintab(tab : Array Of Integer; size : Integer): Integer;
Function indmin (T: Array Of Integer; B1, B2: Integer): Integer;
//we can find the ind min in a desired range from b1 to b2 or just make b1 = 1 and b2 = size
Procedure selectsort(Var t: Array Of Integer; size : Integer);
Function dechsearch( t : Array Of Integer; size, v : Integer): Boolean;
Procedure read2d(Var t : t2d; r, c : Integer);
Procedure write2d(t : t2d; r, c : Integer);
Procedure rand2d(Var t : t2d; r, c, min, max : Integer);
Function mintab2d( tab : t2d; r, c : Integer): Integer;
Function maxtab2d( tab : t2d; r, c : Integer): Integer;
function freq(ch, sch : string): integer;
procedure oneToTwod(tab1 : array of integer; var tab2:t2d ; size, r, c : integer);
Implementation
Uses crt, Wincrt, bib;

Procedure FillArray;
Var
  i: Integer;
Begin
  Writeln(

'fill your array, press enter 2 times after every entry, and when you wanna leave press one enter and esc'
  );
  i := 1;
  Repeat
    Write('Enter value for element ', i, ': ');
    Read(arr[i]);
    i := i+1;
  Until Readkey = Chr(27);
  size := i-1;
End;

Procedure write1d;
Var
  i: Integer;
Begin
  Writeln('displaying the content of your array :');
  For i:= 1 To size Do
    Write( arr[i], ' | ');
End;

Procedure rand1d;
Var
  i : Integer;
Begin
  For i:= 1 To (size) Do
    arr[i] := min + Random ((max - min)+1);
End;

Procedure read1d;
Var
  i : Integer;
Begin
  Writeln('please fill your array :');
  For i:= 1 To size Do
    Begin
      Write('enter element ', i, ': ');
      read(arr[i]);
    End;
End;

Function rechV;
Var
  i : Integer;
  find: Boolean;
Begin
  find := False;
  For i := 1 To size Do
    Begin
      If tab[i] = v Then
        find := True;
    End;
  rechV := find;
End;

Function Nbev;
Var
  i, cpt : Integer;
Begin
  cpt := 0;
  For i := 1 To size Do
    Begin
      If tab[i] = v Then
        cpt := cpt + 1;
    End;
  nbev := cpt;
End;

Function maxtab;
Var
  i, max : Integer;
Begin
  max := tab[2];
  For i := 1 To size Do
    Begin
      If tab[i] > max Then
        max := tab[i];
    End ;
  maxtab := max;
End;

Function mintab;
Var
  i, min : Integer;
Begin
  min := tab[2];
  For i := 1 To size Do
    Begin
      If tab[i] < min Then
        min := tab[i];
    End ;
  mintab := min;
End;

Function indMin;
Var
  Ind , j : Integer;
Begin
  Ind := B1;
  For j := b1+1 To b2 Do
    Begin
      If T[j] < T[ Ind ] Then
        Ind := j;
    End;
  indMin := Ind;
End;
Procedure selectsort;
Var
  i, m : Integer;
Begin
  For i := 0 To size Do
    Begin
      m := indmin(t, i, size);
      swapi(t[m], t[i]);
    End;
End;

Function dechsearch;
Var
  i, min, max, mid : Integer;
  find : Boolean;
Begin
  min := 1;
  max := size;
  find := False;
  While min < max Do
    Begin
      mid := (min + max)Div 2;
      If t[mid] < v Then
        min := mid + 1
      Else
        max := mid;
      If t[mid] = v Then
        find := True
    End;
  dechsearch := find;
End;

Procedure read2d;
Var
  i, j: Integer;
Begin
  For i := 1 To r Do
    For j := 1 To c Do
      Begin
        Writeln('enter T[',i,',',j,']=');
        Read(t[i , j]);
      End;
End;

Procedure write2d;
Var
  i, j : Integer;
Begin
  For i := 1 To r Do
    For j:= 1 To c Do
      Writeln('T[ ',i,' , ',j,' ] = ', t[i,j]);
End;

Procedure rand2d;
Var
  i, j : Integer;
Begin
  For i:= 1 To r Do
    For j:= 1 To c Do
      t[i, j] := min + Random ((max - min)+1);
End;

Function mintab2d;
Var
  i, j, min : Integer;
Begin
  min := tab[1,1];
  For i := 1 To r Do
    For j:= 1 To c Do
      Begin
        If tab[i,j] < min Then
          min := tab[i,j];
      End ;
  mintab2d := min;
End;

Function maxtab2d;
Var
  i, j, max : Integer;
Begin
  max := tab[1,1];
  For i := 1 To r Do
    For j:= 1 To c Do
      Begin
        If tab[i,j] > max Then
          max := tab[i,j];
      End ;
  maxtab2d := max;
End;
function freq(ch, sch : string): integer;
Var
i,j,cpt : integer;
Begin
cpt := 0;
for i := 1 to length(ch) Do
Begin
if sch[1]=ch[i] then
Begin
j := 2;
while (j <= length(sch)) and ((i+j-1)<=length(ch)) and (sch[j]=ch[(i+j-1)]) Do
j := j+1;
if j>length(sch) Then
cpt := cpt + 1;
end;
end;
freq := cpt
end;
procedure oneToTwod;
Var
  i,j,k : Integer;
Begin
	i := 1;
  For k := 1 To r Do
    For j := 1 To c Do
      Begin
        tab2[k, j] := tab1[i];
        i := i + 1;
      End;
End;
End.