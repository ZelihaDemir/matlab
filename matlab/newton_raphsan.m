
% Denklemi giriş
func_str = input('Denkleminizi giriniz (formatta: @(x) fonksiyon): ', 's');
func = str2func(func_str);

% Denklemin grafiğini çizin
fplot(func);
grid on;
xlabel('x');
ylabel('f(x)');
title('Denklemin Grafiği');

% Kullanıcı girdilerini alın
x0 = input('Başlangıç noktasını giriniz: ');
epsilon = input('Minimum hata değerini giriniz: ');
max_iterations = input('Maksimum iterasyon sayısını giriniz: ');

% Newton-Raphson yöntemi
iterations = 0;
errors = [];
roots = [];
while iterations < max_iterations
    f_x0 = func(x0);
    f_prime_x0 = (func(x0 + epsilon) - f_x0) / epsilon;
    if abs(f_prime_x0) < eps
        error('Türev sıfıra çok yakın.');
    end
    x1 = x0 - f_x0 / f_prime_x0;
    error_value = abs(x1 - x0);
    roots = [roots x1];
    errors = [errors error_value];
    fprintf('İterasyon %d: Kök = %.8f, Hata = %.8f\n', iterations+1, x1, error_value);
    if error_value < epsilon
        break;
    end
    x0 = x1;
    iterations = iterations + 1;
end

% Tahmini kökün konumunu göster
hold on;
plot(x1, func(x1), 'ro');
legend('Denklem Grafiği', 'Tahmini Kök');
hold off;

% Her yineleme için hataları göster
figure;
plot(1:iterations, errors, '-o');
grid on;
xlabel('İterasyon');
ylabel('Hata');
title('Her İterasyon İçin Hata');
