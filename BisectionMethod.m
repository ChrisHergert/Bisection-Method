clc;
x1 = 0;                   #Beginning of initial interval
x2 = 100;                 #End of initial interval

x = [x1:.1:x2];           #get x array
n = size(x)(:,2);         #get sizeof x array
        # f(x) = (x + 32)(x - 57) = (x^2) - (25*x) - (1824) 
f = (x + 32).*(x - 57);   # Create vector of values of f(x)
F = (2.*x) - 25;          # Create vector of values of f'(x)

a = 1; # Create initial interval index
b = n;

#####################

for i = 1:10
  
  nHalf = round((b+a)/2);         # Bisect the size of the subinterval[n1,n2]
  nArr = [a,nHalf,b];             # Create the vector of [a,nHalf, b]
  fArr = [f(a), f(nHalf), f(b)]   # Find this 0 to get the fxn 0.
  FArr = [F(a), F(nHalf), F(b)];  # Find this 0 to get the local max/min
  fnA = fArr./abs(fArr);          # Create comparison vector from fArr
  if(fnA(1) == fnA(2))
    n1 = nHalf;                   # If sign matches between a and nHalf, set a to be nHalf
  endif
  if(fnA(3) == fnA(2))
    n2 = nHalf;                   # If sign matches between a and nHalf, set a to be nHalf
  endif
endfor

