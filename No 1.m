clc
clear 

h = linspace(0,1200);
y = f(h);
plot(h,y)
grid on
hold on
xlabel ( 'Nilai X')
ylabel ( 'Nilai Y')
 
a = -1;
b = 0;
itermaks = 100;
toleransi = 1e-2;
 
for j = 1:itermaks
    p = (a+b)/2;
    if abs(f(p)) < toleransi
        break;
    end
    if f(p)*f(a) > 0
        a = p;
    else
        b = p;
    end
end
 
plot (p,f(p),'ro')
nilai_akar=p
jumlah_iterasi = j;

function y=f(h)
y=(4*acos((2-h)./2)-(2-h).*sqrt(4.*h-h.^2)).*5-8;
end
 
