function [t,u,v] = NRK2SED(f,g,a,b,n,u0,v0)
% NRK2SED  Método Númerico para resolver um SED: Runge-Kutta de ordem 2
%   [t,u,v] = MRK2SED(f,g,a,b,n,u0,v0)
%    u'= f(t,u,v), v'=g(t,u,v), t=[a, b], u(a)=u0 e v(a)=v0
%
% INPUT:
%   f, g - funções do 2.º membro das Equações Diferenciais
%   [a, b] - intervalo da variável t
%   n - número de iterações do método
%   u0, v0 - condições iniciais t=a -> u=u0 e v=v0
%
% OUTPUT:
%   [t,u,v] - vetor das soluções
%   Bruno Tiago Ferreira Martins - 2022147149
%   Carlos Emanuel Fernandes Silva - 2022127048
%   Fábio Oliveira -    2022145902

h = (b-a)/n;
t = a:h:b;
u = zeros(1,n+1);
v = zeros(1,n+1);
u(1) = u0;
v(1) = v0;
for i = 1:n
    k1u = h*f(t(i),u(i),v(i));
    k1v = h*g(t(i),u(i),v(i));
    k2u = h*f(t(i+1),u(i)+k1u,v(i)+k1v);
    k2v = h*g(t(i+1),u(i)+k1u,v(i)+k1v);
    u(i+1) = u(i)+(k1u+k2u)/2;
    v(i+1) = v(i)+(k1v+k2v)/2;
end
end

