fs = 11025;
scale.keys = [40 42 44 45 47 49 51 52];
scale.durations  = 0.25 * ones(1,length(scale.keys)); 
xx = zeros(1, sum(scale.durations)*fs+length(scale.keys)); 
n1 = 1;
X = 10*exp(j*pi);

for kk = 1:length(scale.keys)
    keynum = scale.keys(kk);
    tone = key2note(X , keynum , scale.durations ,fs ,1); %use function to make the signal
    n2 = n1 + length(tone) -1 ;
    xx(n1:n2 ) = xx(n1:n2)+tone;
    n1 = n2 + 1;
end 

soundsc(xx,fs);
plotspec(xx,fs)

