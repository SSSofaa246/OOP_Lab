# CMake generated Testfile for 
# Source directory: C:/Dev/Laba1_Var6
# Build directory: C:/Dev/Laba1_Var6/build
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
if(CTEST_CONFIGURATION_TYPE MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
  add_test(CensorTests "C:/Dev/Laba1_Var6/build/Debug/censor_tests.exe")
  set_tests_properties(CensorTests PROPERTIES  _BACKTRACE_TRIPLES "C:/Dev/Laba1_Var6/CMakeLists.txt;21;add_test;C:/Dev/Laba1_Var6/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
  add_test(CensorTests "C:/Dev/Laba1_Var6/build/Release/censor_tests.exe")
  set_tests_properties(CensorTests PROPERTIES  _BACKTRACE_TRIPLES "C:/Dev/Laba1_Var6/CMakeLists.txt;21;add_test;C:/Dev/Laba1_Var6/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
  add_test(CensorTests "C:/Dev/Laba1_Var6/build/MinSizeRel/censor_tests.exe")
  set_tests_properties(CensorTests PROPERTIES  _BACKTRACE_TRIPLES "C:/Dev/Laba1_Var6/CMakeLists.txt;21;add_test;C:/Dev/Laba1_Var6/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
  add_test(CensorTests "C:/Dev/Laba1_Var6/build/RelWithDebInfo/censor_tests.exe")
  set_tests_properties(CensorTests PROPERTIES  _BACKTRACE_TRIPLES "C:/Dev/Laba1_Var6/CMakeLists.txt;21;add_test;C:/Dev/Laba1_Var6/CMakeLists.txt;0;")
else()
  add_test(CensorTests NOT_AVAILABLE)
endif()
