# Minimizing-Quadratic-Function-using-Gradient-Method-with-some-fixed-step-size
## Gradient Method
The Gradient Method is the simplest among descent methods. It uses a linear approximation of f(xk + d), as a function of the vector d, and the search is performed in a direction −∇ f(x), where ∇ f(x) is the gradient of the objective function. <br/>
For this problem objective function is f(x) = 1/2 * transpose(x)*Q*x - transpose(b)*x (quadratic function). <br/>
Q and b are given in the figure below. <br/>
![screenshot 42](https://user-images.githubusercontent.com/78887209/155900154-62459193-463c-4f54-88b3-d79d5c8283e5.jpg) <br/>
We wish to find the minimizer of f using a fixed-step-size gradient algorithm x(k+1) = x(k) - alpha * ∇(f(x(k)) , alpha is a fixed step size <br/>
I solved the problem according to 3 different fixed step size. 1/lambda(max), 3/lambda(max) , 2/(lambda(min)+lambda(max)) <br/>
In theory, the convergence condition of the gradient method, specific to quadratic functions, is that the step size is between 0 and 1/lambda(max). <br/>
On the other hand, the optimum x value for quadratic functions is found with a -->  x_opt = Q^(-1) * b  <br/>
In the light of this information, I ran the program 50 iterations and plotted the relational error graph for 3 step sizes.  <br/>
![screenshot 43](https://user-images.githubusercontent.com/78887209/155901171-36705165-6ee8-415a-9ce0-954f7806fd1c.jpg) : relational error formula , x* : x optimal and xk : step x <br/>
The results confirm the theoretical knowledge.
![screenshot 44](https://user-images.githubusercontent.com/78887209/155901327-97630ebf-5e5e-46f8-8f7a-e4b31c91409d.jpg) <br/>
![screenshot 45](https://user-images.githubusercontent.com/78887209/155901345-5a798268-8f08-40cd-8d23-fcc8bb29e718.jpg) <br/>
![screenshot 46](https://user-images.githubusercontent.com/78887209/155901352-31c39bf4-6adc-406a-b8e7-88a9332a6056.jpg) <br/>
As can be seen, when the step size is between 0 and the 1/lambda(max), the error decreased as the number of iterations increased.
