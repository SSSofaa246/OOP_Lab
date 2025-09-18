#include <gtest/gtest.h>
#include <string>
#include <set>
#include "censor.h"

using namespace std;


TEST(CensorTest, RemovesAllVowels) {
    string input = "Hello World";
    string expected = "Hll Wrld";
    EXPECT_EQ(Censored(input), expected);
}

TEST(CensorTest, HandlesEmptyString) {
    string input = "";
    string expected = "";
    EXPECT_EQ(Censored(input), expected);
}

TEST(CensorTest, RemovesMixedCaseVowels) {
    string input = "AaEeIiOoUuYy";
    string expected = "";
    EXPECT_EQ(Censored(input), expected);
}

TEST(CensorTest, KeepsConsonantsAndSymbols) {
    string input = "BCDFGHJKLMNPQRSTVWXYZ!@#$%^&*()1234567890";
    string expected = "BCDFGHJKLMNPQRSTVWXZ!@#$%^&*()1234567890";
    EXPECT_EQ(Censored(input), expected);
}

TEST(CensorTest, HandlesStringWithOnlyVowels) {
    string input = "AEIOUYaeiouy";
    string expected = "";
    EXPECT_EQ(Censored(input), expected);
}

TEST(CensorTest, HandlesStringWithNoVowels) {
    string input = "BCDFGHJKLMNPQRSTVWXYZ bcdfghjklmnpqrstvwxyz";
    string expected = "BCDFGHJKLMNPQRSTVWXZ bcdfghjklmnpqrstvwxz";
    EXPECT_EQ(Censored(input), expected);
}

int main(int argc, char **argv) {
    ::testing::InitGoogleTest(&argc, argv);
    return RUN_ALL_TESTS();
}