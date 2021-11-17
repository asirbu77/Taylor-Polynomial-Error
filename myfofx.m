function [fx] = myfofx(x)
    % Initialize sum as 0
    T = 0;
    
    % Should user input array for x, take first and last entry of array
    first = x(1);
    last = x(length(x));
    
    % Check if array within range of 1-10^-6 < array < 1+10^-6
    if (last<1+10^-6) && (first>1-10^-6)
        % If within range, perform Taylor Series approximation
        % Loop over terms in series from k=0 to k=n
        for k = 0:8
        % Taylor polynomial in series notation form converted to operate in a
        % for loop
            T = T + (-1).^(k+1)./(k+2)*(x-1).^k;
        end
        fx = T;
    % If array not within range, use exact value to maintain accuracy
    else
        fx = (log(x)-x+1)./(x-1).^2;
    end
end