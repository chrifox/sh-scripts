#include <iostream>
#include <fstream>
using namespace std;


int main(void)
{
	ifstream file ("data.csv");
	string value;
	cin >> property;
	while (file.good())
	{
		getline (file, value, ',');
		cout << string(value, 1, value.length() - 2);
	}
	return 0;
}
