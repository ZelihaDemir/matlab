
% tam çam ağacı
p = 'e';
while p == 'e'
    clc, clear all, close all;

    
    a = 20;
    c = input ('Katman sayısını giriniz :');
    d = input ('Yüksekliği giriniz :');
    b =input("Gövde uxunluğunu giriniz :");

    
    for m = 1:c
        for i=1:d
            for j = 1:a
                fprintf(" ");
            end
            for k=1:b
                fprintf("*");
            end
    
            fprintf("\n");
            a = a-1;
            b=b+2;
        end
        a = a+2;
        b = b-4;
    end
    p = input ('devam etmek istiyor musunuz (e/h):','s')
end

