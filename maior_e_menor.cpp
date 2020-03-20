#include <iostream>

using namespace std;

int main(int argc, char const *argv[])
{
  int n1, n2, n3, n4, n5, maior, menor;

  cin >> n1;
  cin >> n2;
  cin >> n3;
  cin >> n4;
  cin >> n5;

  if (n1 >= n2 && n1 >= n3 && n1 >= n4 && n1 >= n5) {
    maior = n1;
  } else if (n2 >= n1 && n2 >= n3 && n2 >= n4 && n2 >= n5) {
    maior = n2;
  } else if (n3 >= n1 && n3 >= n2 && n3 >= n4 && n3 >= n5) {
    maior = n3;
  } else if (n4 >= n1 && n4 >= n2 && n4 >= n3 && n4 >= n5) {
    maior = n4;
  } else if (n5 >= n1 && n5 >= n2 && n5 >= n3 && n5 >= n4) {
    maior = n5;
  }

  if (n1 <= n2 && n1 <= n3 && n1 <= n4 && n1 <= n5) {
    menor = n1;
  } else if (n2 <= n1 && n2 <= n3 && n2 <= n4 && n2 <= n5) {
    menor = n2;
  } else if (n3 <= n1 && n3 <= n2 && n3 <= n4 && n3 <= n5) {
    menor = n3;
  } else if (n4 <= n1 && n4 <= n2 && n4 <= n3 && n4 <= n5) {
    menor = n4;
  } else if (n5 <= n1 && n5 <= n2 && n5 <= n3 && n5 <= n4) {
    menor = n5;
  }

  cout << maior - menor << endl;
  return 0;
}
