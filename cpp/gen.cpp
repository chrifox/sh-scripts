#include <iostream>
#include <list>
using namespace std;

int main(void)
{
string name;
cout << "What's your name?\n";
cin >> name;
cout << "Hi " << name << "\n";

return 0;
};

class Tile {
public:
int x;
int y;
};

class Grid {
public:
list <Tile> tiles;
};
