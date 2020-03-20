#include <iostream>

using namespace std;

int main(int argc, char const *argv[]) {
  float nota1, nota2, media;

  cin >> nota1;
  cin >> nota2;

  media = (nota1 + nota2) / 2;

  if (media >= 7) {
    cout << "pass: True!" << endl;
  } else {
    cout << "pass: False!" << endl;
  }
  
  return 0;
}
