
function [t,u,v] = NEulerMelhoradoSED(f,g,a,b,n,u0,v0)
% NEulerMelhoradoSED Método Númerico para resolver um SED: Euler melhorado
%   [t,u,v] = MHeunSED(f,g,a,b,n,u0,v0) Método numérico para a resolução de um SED (ordem 2)
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
for i=1:n
    k1u = f(t(i),u(i),v(i));
    k1v = g(t(i),u(i),v(i));
    k2u = f(t(i+1),u(i)+k1u*h,v(i)+k1v*h);
    k2v = g(t(i+1),u(i)+k1u*h,v(i)+k1v*h);
    u(i+1) = u(i)+h*((k1u+k2u)/2);
    v(i+1) = v(i)+h*((k1v+k2v)/2 );
end
end
