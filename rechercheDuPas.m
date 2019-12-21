function [r1] = rechercheDuPas(x,d,p0,tolR)
  %{
  
  %}
  
  r0 = 10 * p0;
  r1 = p0;
  j = 1;
  while true
    phip = d' * gradFR(x + r1 * d);
    phipp = d' * hessFR(x + r1* d) * d;
    r0 = r1;
    r1 = r1 - phip/phipp;
    j = j + 1;
    if norm(r1 - r0) <= tolR || j >= 10000
      break
    endif
  end
  
endfunction
