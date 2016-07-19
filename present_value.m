function [value, installment, payout] = present_value(price, down, n, apr)
   delta = exp(-.06/12);
   r = (1 + apr/100)^(1/12);

   financed = price - down;
   if r == 1
      ratio = n;
   else 
      ratio = (1-r^n)/(1-r);
   end
      
   
   installment = financed*r^(n-1)/ratio;
   payout = installment*n;
   
   value = down + installment*delta*(1 - delta^n)/(1 - delta);
end