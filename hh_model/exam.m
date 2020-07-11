global gK gNa gL VK VNa VL I C;



gNa = 120; gK = 36; gL = 0.3;

VNa = 55; VK = -72; VL = -50;

C = 1; I = 10;



am = @(V) -0.1 * (35+V) ./ (exp(-0.1*(35+V)) - 1);

bm = @(V) 4 * exp(-(60+V)/18);



ah = @(V) 0.07 * exp(-(60+V)/20);

bh = @(V) 1 ./ (exp(-(30+V)/10) + 1);



an = @(V) 0.01 * (-(50+V)) ./ (exp(-0.1*(50+V)) - 1);

bn = @(V) 0.125 * exp(-(60+V)/80);





f = @(t,y) [ (-gK*y(3).^4.*(y(1) - VK) - gNa*y(2).^3.*y(4).*(y(1)-VNa)-gL.*(y(1)-VL) + I)/C; ...

               am(y(1)).*(1-y(2))-bm(y(1)).*y(2); ...

               an(y(1)).*(1-y(3))-bn(y(1)).*y(3); ...

               ah(y(1)).*(1-y(4))-bh(y(1)).*y(4) ];

         

[T, Y] = ode45(f, [0 20], [-30 0 0.4 0.4]);



subplot(211);

plot(T,Y(:,1));

xlabel('t'); ylabel('V(t)');

title('Membrane potential vs time');



subplot(212);

plot(T,Y(:,2), T,Y(:,3), T, Y(:,4));

legend('m(t)', 'n(t)', 'h(t)');

xlabel('t'); %ylabel('V(t)');

title('Gating variables vs time');


