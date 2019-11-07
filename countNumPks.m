function NumPks=countNumPks(signal)
%% count number of peaks, including maxima and minima
%  signal: as name
%  NumPks: number of peaks
%% at least three data points
if(length(signal)<3)
    error('input wrong');
end
val1=findpeaks(signal); % maxima
val2=findpeaks(-signal); % minima
NumPks=length(val1)+length(val2); % total number