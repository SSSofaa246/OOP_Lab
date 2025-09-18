#include <iostream>
#include <set>
#include <string>
#include "censor.h"

using namespace std;

int main() {
  string good_Censored_Comment, bad_Troll_Comment;
  getline(cin, bad_Troll_Comment);
  good_Censored_Comment = Censored(bad_Troll_Comment);

  cout << good_Censored_Comment;
}
