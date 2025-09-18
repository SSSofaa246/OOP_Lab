#include "censor.h"
#include <set>
#include <string>

using namespace std;

string Censored(string &input) {
  set<char> vowel_Letters = {'A', 'E', 'I', 'O', 'U', 'Y',
                             'a', 'e', 'i', 'o', 'u', 'y'};
  string result;
  for (int i = 0; i < input.size(); ++i) {
    char letter = input[i];
    if (vowel_Letters.find(letter) == vowel_Letters.end()) {
      result += letter;
    }
  }
  return result;
}