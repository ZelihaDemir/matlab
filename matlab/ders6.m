
function [root, errors] = newton_raphson()

    % (b) Girdi denkleminin grafiğini çizme
    x_values = linspace(-5, 5, 400);
    y_values = 5*x_values.^2 + 8*x_values + 7;
    plot(x_values, y_values);
    xlabel('x');
    ylabel('f(x)');
    title('Graph of the Function');
    grid on;

    % (c) Kullanıcıdan başlangıç noktalarını, minimum hatayı ve yineleme sayısını alın
    initial_guess = input('Enter the initial guess: ');
    tolerance = input('Enter the tolerance: ');
    max_iterations = input('Enter the maximum number of iterations: ');

    % (d) Newton-Raphson yöntemini kullanarak kökü bulma
    x = initial_guess;
    iteration = 0;
    error = tolerance + 1;
    errors = [];

    while error > tolerance && iteration < max_iterations
        x_new = x - (5*x^2 + 8*x + 7) / (10*x + 8);
        error = abs(x_new - x);
        x = x_new;
        iteration = iteration + 1;
        errors = [errors, error];
        fprintf('Iteration %d: Root = %.6f, Error = %.6f\n', iteration, x, error);
    end

    if iteration == max_iterations
        disp('Maximum iterations reached.');
    else
        disp('Root found within tolerance.');
    end

    % (e) Tahmini kökün konumunu grafik olarak gösterme
    hold on;
    plot(x, 5*x^2 + 8*x + 7, 'ro');
    hold off;

    % (f) Her yineleme için hataları gösterme
    figure;
    iterations = 1:length(errors);
    plot(iterations, errors, '-o');
    xlabel('Iteration');
    ylabel('Error');
    title('Error vs Iteration');
    grid on;

end

