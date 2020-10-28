%Response of a Sound File on LTI System.
%GC Rao Farhat Masood
%DE - 25 (Elec)
%Assignment # 1.
%===================================================================
function lti        % Function declaration
clear all           % Removing all variables, functions, and MEX-files from memory, leaving the work space empty.
close all           % Deleting all figures whose handles are not hidden.
clc                 % Clearing all input and output from the Command Window display giving us a clean screen.
[n,t] = wavread('hii.wav'); % Reading the Wav file titled hi, from the WORK folder and returning the sampled data in x.
figure (1)
plot (x);           % Plotting the sampled data of the wav file.
grid on;
title('Input Waveform')

l = length(x);      % Calculating the length of x and storing in a variable n.

for(n = l : -1 : 5) %Loop from the sampled data bit to some finite number.
    y(n) = x(n) + x(n-4);   % Application of the function on the wav file[sampled data].
end                 %end of the loop.
figure(2)
plot(y);
title ('Output Waveform')
grid on;
%wavplay(y,40);
wavwrite(y,'hye.wav'); % Writing the output to wav file titled hye.
end                     % End of program.