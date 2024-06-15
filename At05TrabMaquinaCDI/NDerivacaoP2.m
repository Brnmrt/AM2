%   Bruno Tiago Ferreira Martins - 2022147149
%   Carlos Emanuel Fernandes Silva - 2022127048
%   Fábio Oliveira -    2022145902
% Fórmula das diferenças progressivas em 2 pontos
% f′(xk) = f(xk+1)−f(xk) / h

function [x, y, dydx] = NDerivacaoP2(f, a, b, h, y)
x = a: h: b;
n = length(x);

if nargin == 4
    y = f(x);
end

dydx = zeros(1, n);

for i = 1: (n - 1)
    dydx(i) = (y(i + 1) - y(i)) / h;
end

dydx(n) = (y(n) - y(n - 1)) / h;
end

