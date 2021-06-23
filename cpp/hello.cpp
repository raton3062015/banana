#include <bits/stdc++.h>
using namespace std;
//Find the smallest missing positive number from an unsorted array
// 1 8 9 2 2 4 6 5 7

int parti(int ar[],int n){
	int p=0;
	for(int i=0;i<n;++i){
		if(ar[i]>=0)swap(ar[i],ar[p++]);
	
	}
	return p;
}


int main(){
	//vectorint> v={1,2};
	 int arr[] = { 1, 4, 2, -1, 6, 5 };
	 int n = sizeof(arr) / sizeof(arr[0]);
	int p= parti(arr,n);
	//for(int i=0;i<n;++i)cout<< arr[i]<<" ";
	for(int i=0;i<p;++i){
		arr[abs(arr[i])-1]=-arr[abs(arr[i])-1];
	}
	
	for(int i=0;i<p;++i){
		cout << arr[i] <<" ";
	}	
	cout <<endl;
	int i;
	for( i=0;i<p;++i){
		if(arr[i]>=0)break;
		
	}
	cout << i+1 <<endl;
}
