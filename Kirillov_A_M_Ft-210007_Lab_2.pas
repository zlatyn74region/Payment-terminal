var i,x,sott,dt,et,ss,dd,ee,q,z:integer;
  s:array[0..9] of string;
  d:array[0..9] of string;
  e:array[0..9] of string;
  te:array [0..9] of string;
  ds:array [0..19] of string;
begin
  s[0]:='';d[0]:='';e[0]:='';te[0]:=''; 
  s[1]:='сто '; d[1]:='десять ';e[1]:='один ';   ds[11]:='одиннадцать ';   te[1]:='одна ';
  s[2]:='двести ';d[2]:='двадцать ';e[2]:='два ';  ds[12]:='двенадцать ';   te[2]:='две ';
  s[3]:='триста ';d[3]:='тридцать ';e[3]:='три '; ds[13]:='тринадцать ';    te[3]:='три ';
  s[4]:='четыреста ';d[4]:='сорок ';e[4]:='четыре '; ds[14]:='четырнадцать ';   te[4]:='четыре ';
  s[5]:='пятьсот ';d[5]:='пятьдесят ';e[5]:='пять ';ds[15]:='пятнадцать ';   te[5]:='пять ';
  s[6]:='шестьсот ';d[6]:='шестьдесят ';e[6]:='шесть ';ds[16]:='шестнадцать ';  te[6]:='шесть ';
  s[7]:='семьсот ';d[7]:='семьдесят ';e[7]:='семь ';ds[17]:='семнадцать ';   te[7]:='семь ';
  s[8]:='восемьсот ';d[8]:='восемьдесят ';e[8]:='восемь ';ds[18]:='восемнадцать '; te[8]:='восемь ';
  s[9]:='девятьсот ';d[9]:='девяносто ';e[9]:='девять ';ds[19]:='девятнадцать ';  te[9]:='девять ';
  writeln('Введите число x (>=0 и <=999999');
  readln(x);
  for i:= 1 to 6 do begin sott:=x div 100000 mod 10; dt := x div 10000 mod 10; et:= x div 1000 mod 10; ss:= x div 100 mod 10; dd:= x div 10 mod 10; ee:= x mod 10; 
  end;
  if x>99999 then  q:= x div 1000 mod 100; 
  z:= x mod 100;
  
  write(s[sott]);
  
  if ( x >999) then if (x div 1000 mod 100 >10) and (x div 1000 mod 100 <20) then write(ds[q],'тысяч ') else begin
      write (d[dt]);
      if x div 1000 mod 10 = 1 then write(te[et], 'тысяча ') ; 
      if (x div 1000 mod 10 >1) and (x div 1000 mod 10 <5) then write(te[et], 'тысячи ') ;
      if (x div 1000 mod 10 > 5) or (x div 1000 mod 10 = 0) then write(te[et], 'тысяч ');
  end;
            
  write(s[ss]); 
    
  if (x mod 100 >10) and (x mod 100 <20) then writeln(ds[z],'рублей') else 
    begin  write(d[dd]); 
          if (ee >4) and (ee<10) or (ee=0) then write(e[ee],'рублей');
              if (ee >1) and (ee<5) then write(e[ee],' рубля');
                  if ee  = 1 then write (e[ee],' рубль'); 
  end;
end.