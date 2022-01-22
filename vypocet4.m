function [ q4koniec ] = vypocet4( yb,xb )
if yb<0 & xb<0       %--
   q4koniec=-pi/2;
elseif yb>0 & xb>0   %++
   q4koniec=pi/2;
elseif yb<0 & xb>0   %-+
   q4koniec=2*pi;
elseif yb>0 & xb<0   %+-
   q4koniec=pi;
elseif yb==0 & xb>0  %0+
   q4koniec=2*pi;
elseif yb==0 & xb<0  %0-
   q4koniec=pi;
elseif yb>0 & xb==0  %+0
   q4koniec=pi;
elseif yb<0 & xb==0  %-0
   q4koniec=pi;
end
end

