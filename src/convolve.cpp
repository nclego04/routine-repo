#include <iostream>
#include <vector>
#include <cmath>
#include <algorithm>

std::vector<double> convolve(const std::vector<double>& x,
                             const std::vector<double>& h);

std::vector<double> convolve(const std::vector<double>& x,
                             const std::vector<double>& h) {

    int M = h.size();
    int N = x.size();

    std::vector<double> y(N + M - 1, 0.0);

    for (int n = 0; n <= N + M - 2; n++){
        y[n] = 0;
        std::cout << "y[" << n << "] = ";
        for (int k = std::max(0, n - M + 1); k <= std::min(n, N - 1); k++)
        {
            y[n] += x[k] * h[n - k];
            std::cout << x[k] << " * " << h[n-k];
            if (k == std::min(n, N-1))
                std::cout << " ";
            else
                std::cout << " + ";
        }
        std::cout << "\n";
        std::cout << "y[" << n << "] = " << y[n] << "\n";
    }


    return y;
}

int main() {
    std::vector<double> x = {1, 4, -2, 5};
    std::vector<double> h = {2, -1, 3};
    std::vector<double> expected = {2, 7, -5, 24, -11, 15};

    std::vector<double> y = convolve(x, h);
    bool ok = true;

    if (y.size() != expected.size()) {
        std::cout << "FAIL length: got " << y.size()
                  << ", want " << expected.size() << "\n";
        ok = false;
    } else {
        for (size_t i = 0; i < expected.size(); ++i) {
            if (std::fabs(y[i] - expected[i]) > 1e-9) {
                std::cout << "FAIL y[" << i << "]: got " << y[i]
                          << ", want " << expected[i] << "\n";
                ok = false;
            }
        }
    }

    double sum = 0.0;
    for (double v : y) sum += v;
    if (std::fabs(sum - 32.0) > 1e-9) {
        std::cout << "FAIL DC sum: got " << sum << ", want 32\n";
        ok = false;
    }

    std::cout << (ok ? "PASS\n" : "FAILED\n");
    return ok ? 0 : 1;
}
