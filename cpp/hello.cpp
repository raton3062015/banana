#include <bits/stdc++.h>
using namespace std;
//Find the smallest missing positive number from an unsorted array
// 1 8 9 2 2 4 6 5 7

int main(){
	//vectorint> v={1,2};
	 int arr[] = { 1, 4, 2, -1, 6, 5 };
	 int n = sizeof(arr) / sizeof(arr[0]);
	unordered_set<int> s(arr,arr+n);
	int ind=1;
	while(true){
		if(!s.count(ind)){
			cout << ind <<endl; 
			break;
		}
		++ind;
	}
	return 0;
}
