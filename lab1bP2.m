% =================================================================
% AUTHOR ....... Aidan Sirbu, Katie Brown
% UPDATED ...... Jan 26, 2021
%
% Evaluating the truncated Taylor series f(x)=(log(x)-x+1)/(x-1)^2
% about x0=1.
%
% INPUT
%  x : Vector of values to evaluate the Taylor polynomial at
%  n : Integer of last term to evaluate in Taylor polynomial
% 
% OUTPUT
% T : Evaluated Taylor polynomial at points given by x degree n
% ==================================================================
function T = lab1bP2(x, n)

    % Initialize sum as 0
    T = 0;
    
    % Loop over terms in series from k=0 to k=n
    for k = 0:n
        % Taylor polynomial in series notation form converted to operate in a
        % for loop
        T = T + (-1).^(k+1)./(k+2)*(x-1).^k;
    end
end
