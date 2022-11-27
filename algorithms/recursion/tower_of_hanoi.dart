//Program to print steps needed to solve tower of hanoi puzzle
//refer for baisc understanding - https://www.youtube.com/watch?v=l45md3RYX7c

//How the statements are printing?

void main() {
  int n = 3;
  String s = 'source';
  String h = 'helper';
  String d = 'destination';
  int count = 0; //number of steps

  count = towerOfHanoi(n, s, d, h, count);
  print('total steps : $count');
}

int towerOfHanoi(int n, String s, String d, String h, int count) {
  count++;
  if (n == 1) {
    print('move disk $n from $s to $d');
    return count;
  }

  count = towerOfHanoi(n - 1, s, h, d, count);
  print('move disk $n from $s to $d');
  count = towerOfHanoi(n - 1, h, d, s, count);
  return count;
}
