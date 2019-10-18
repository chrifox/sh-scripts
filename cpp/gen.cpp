#include <iostream>
using namespace std;

class Tile {
public:
//	int x;
//	int y;
//	int type;
	Tile(int x, int y, int type) {
		x = x;
		y = y;
		type = type;
	}
};

class Grid {
public:
	Grid(int width, int height) {
		int tiles[height][width];
		for (int y = 0; y < height; y++) {
			for (int x = 0; x < width; x++) {
				tiles[y][x] = x;
			}
		}
	}
};

int main(void) {
int width, height;
cout << "Enter width: ";
cin >> width;
cout << "Enter height: ";
cin >> height;
cout << "Width: " << width << "\nHeight: " << height << "\n";

Grid map(width, height);
cout << "Your Map: \n";
for (int y = 0; y < height; y++) {
	for (int x = 0; x < width; x++) {
		cout << "|" << y << "," << x << "|";
	}
	cout << "\n";
}

return 0;
};

