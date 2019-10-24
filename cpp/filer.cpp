#include <iostream>
#include <fstream>
using namespace std;

int writeToFile(string filename)
{
	ofstream myFile;
	myFile.open (filename);
	myFile << "Write to a file...\n";
	myFile.close();
	return 0;
}

int readFile(string filename)
{
	string line;
	ifstream myFile (filename);
	if (myFile.is_open())
	{
		while (getline (myFile, line))
		{
			cout << line << "\n";
		}
		myFile.close();
	}
	else cout << "Unable to open file\n";
	return 0;
}

int main(void)
{
	writeToFile("example.txt");
	readFile("example.txt");
	return 0;
}
