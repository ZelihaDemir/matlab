

number = 123;
123+1;
pi;
sin(number);
%%
a = 1 + 2 + 3;
b = 2^a + a^3;
%%
a = 3;
b = 8;
c = 'toplami';
d = 'carpimi';
h = 'farki';
i = 'bolumu';
e = 'x';
f = a+b;
g = f*b;
j = a/b;
l = j-g;
"merhaba dünya";

% disp : sadece metin içerikli şeyleri yazar.
disp("Matematiksel işlemler")
fprintf('%.f ve %.f sayılarının %s : %.2f eder.\n',a,b,c,f)
fprintf('%e ve %.e sayılarının %s : %.2f eder.\n',f,b,d,g)
fprintf('%g sayısının %g ye %s :%.2f eder.\n',a,b,i,j);

% f = msgbox('işlemler bitti');