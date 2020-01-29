#include <iostream>
using namespace std;

int main(void)
{
// printing to console
cout << "~~~ Hello! Welcome to C++ ~~~" << endl << "\n";

// variables
cout << "VARIABLES" << endl << "\n";

int myInt = 10;
cout << "Integer (int) eg: " << myInt << endl;

double myDouble = 7.25;
cout << "Double (double) eg: " << myDouble << endl;

char myChar = 'C';
cout << "Character (char) eg: '" << myChar << endl;

string myString = "Strings use double quotes";
cout << "String (string) eg: \"" << myString << "\"" << endl;

bool myBool = true;
cout << "Boolean (bool) eg: " << std::boolalpha << myBool << endl;

// declare multiple variables
int x = 1, y = 2, z = 3;
cout << "Print multiple vars: " << x << y << z << endl;
cout << "Calc with vars inline: " << x + y + z << endl;

cout << endl;

// user input
cout << "USER INPUT" << endl << "\n";

int emptyInt;
cout << "Choose a number: ";
cin >> emptyInt;
cout << "You chose the number " << emptyInt << endl;

return 0;
}
