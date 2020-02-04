#include <iostream>
#include <algorithm>
#include <fstream>

using namespace std;

int split_count(string str, char delim)
{
	return count(str.begin(), str.end(), delim);
}

void split(string str, char delim, string res[])
{
	int a = 0, i = 0;
	while (a < str.size())
	{
		res[i] = str.substr(a, str.find(delim));
		a += res[i].size() + 1;
		i++;
	}
}

int main(void)
{
	ifstream file ("data.csv");
	string value;
	string property;
	cout << "Filter by: ";
	cin >> property; // take property to filter by
	
	while (file.good())
	{
		getline (file, value, ',');
		cout << value << endl;
//		string line = string(value, 1, value.length() - 2);
//		int x = split_count(line, ',') + 1;
//		string res[x];
//		split(value, ',', res);

//		for (int i = 0; i < x; i++)
//		{
//			cout << res[i] << endl;
//		}
		
//		cout << line << endl;
	}
	
	return 0;
}
