//Program for Binary Search

//Binary search is a searching algorithm applied on a sorted array which search the element by 
//repeatedly dividing the search interval by half
// The idea of binary search is to use the information that the array is sorted and reduce the time complexity to O(Log n). 

//return index of the searched element x
//if not found return -1

void main() {
  List<int> array = [10,20,30,50,60,90,130,150,180,210];
  int x = 130;

  int result = binarySearch(0,array.length,x,array);
  print(result);
}

int binarySearch(int low, int high,int x,List<int> array) {
while(low <= high) {
  int mid = (low + high) ~/ 2;

  if(x == array[mid]) {
    return mid;
  } else if(x > array[mid]) {
    low = low + 1;
  } else {
    high = high - 1;
  }
}

return -1;

}