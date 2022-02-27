Q = [11 9; 9 11];
Q_inv = Q^(-1);
b = [80; 40];
x0 = [8 ; 1];
e = eig(Q);
max_e = e(2);
min_e = e(1);
error = [];
error_c = [];
x_opt = Q^(-1) * b ;
stepsize = 1/max_e;
%a     stepsize = 1/Lambdamax
for k = 1:50
    v = x0 - x_opt;
    error(k) = norm(v) / norm(x_opt);
    grad_f = Q * x0 - b;
    x0 = x0 - stepsize*grad_f;
end
figure(1)
plot(error(1:end));
title("Gradient Method with 1/max(lambda(Q))");
xlabel("Iteration");
ylabel("Error");

%b stepsize 3/lambdamax
error_b = [];
x0 = [8 ; 1];   %initial
for j = 1:50
    v = x0 - x_opt;
    error_b(j) = norm(v) / norm(x_opt);
    grad_f = Q * x0 - b;
    x0 = x0 - (3/max_e)*grad_f;
end
figure(2)
plot(error_b(1:end));
title("Gradient Method with 3/max(lambda(Q))");
xlabel("Iteration");
ylabel("Error");

%c stepsize 2/
error_c = [];
x0 = [8 ; 1];
for k = 1:50
    v = x0 - x_opt;
    error_c(k) = norm(v) / norm(x_opt);
    grad_f = Q * x0 - b;
    x0 = x0 - (2/(max_e+min_e))*grad_f;
end
figure(3)
plot(error_c(1:end));
title("Gradient Method with 2/(max(lambda(Q)+min(lambda(Q))");
xlabel("Iteration");
ylabel("Error");
   


    

