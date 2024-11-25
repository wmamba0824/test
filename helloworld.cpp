#include<iostream>
using namespace std;

#include "min.h"

// int min(int a, int b) {
//     return (a < b)? a : b;
// }

int main(){
    cout << "Hello, World!" << endl;
    // C++ 代码
    int a;
    cout << "Please enter an integer value for a: ";  // 向用户输入 a 值
    cin >> a;
    cout << "a 的值是: " << a << endl; // 输出 a 的值


    int c;
    cout << "Please enter an integer value for c: ";  // 向用户输入 a 值
    cin >> c;
    cout << "c 的值是: " << c << endl; // 输出 c 的值

    int min_value = min(a, c);  // 找到 a 和 c 的最小值
    cout << "The minimum value of a and c is: " << min_value << endl; // 输出最小值

    return 0;       
}