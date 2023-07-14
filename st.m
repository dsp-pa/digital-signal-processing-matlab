function [ s ] = st( inicio, fin )
%ST Summary of this function goes here
%   Detailed explanation goes here

n=inicio:fin;
for i=1:length(n)
    if n(i) >= 2
        s(i)=n(i);
    else if 
        s(i)=0;
    end
end

        
end

