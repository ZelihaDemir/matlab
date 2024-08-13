clc,clear all,close all;

%{
fprintf("*****\n");
fprintf("*****\n");
fprintf("*****\n");
fprintf("*****\n");
fprintf("*****\n");
%}
%{
for i=1:2:10
    for j=1:2:20
        fprintf("*")
        break;
    end

    fprintf("%g\n",i);
end

% yarım çam ağacı

a = 1;
for m = 1:2
    for i=1:6
        for j =1:a
            fprintf("*");
        end
        fprintf("\n");
        a = a+1;
    end
    a = a-2;
end

%}



