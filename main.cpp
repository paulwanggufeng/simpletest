#include "show_msg.h"
#include "bits/stdc++.h"
#include <iostream>
#include <memory>

struct AA {
    int x;
    int c;
};
int main()
{
    auto x = std::unique_ptr<AA>(new AA());
    size_t a = 0;
    int b = a;

    ShowMessage s;
    s.output();
    std::cout << "done." << std::endl;
    return 0;
}
