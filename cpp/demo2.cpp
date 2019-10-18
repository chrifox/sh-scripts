#include <iostream>
using namespace std;

int main(void)
{
// printing to console
cout << "Hello! Welcome to C++\n\n";

// variables
cout << "Variables\n";

int myInt = 10;
cout << "Integer (int) eg: " << myInt << "\n";

double myDouble = 7.25;
cout << "Double (double) eg: " << myDouble << "\n";

char myChar = 'C';
cout << "Character (char) eg: " << myChar << "\n";

string myString = "Strings use double quotes";
cout << "String (string) eg: " << myString << "\n";

bool myBool = true;
cout << "Boolean (bool) eg: " << myBool << "\n";

// declare multiple variables
int x = 1, y = 2, z = 3;
cout << "Print multiple vars: " << x << y << z << "\n";
cout << "Calc with vars inline: " << x + y + z << "\n";

// user input
cout << "User Input\n";

int emptyInt;
cout << "Choose a number: ";
cin >> emptyInt;
cout << "You chose the number " << emptyInt << "\n";

return 0;
}
