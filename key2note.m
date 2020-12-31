function xx = key2note(X ,keynum ,dur ,fs ,n_har)
    tt = 0:(1/fs):dur;
    freq = 440*2.^((keynum-40)/12); %caculate frequency on Musical note
    xx = real(X * exp(j*2*pi*freq*tt)); 
    
    