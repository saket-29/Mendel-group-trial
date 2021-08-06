#include<bits/stdc++.h>
#include <iostream>
#include <fstream>

using namespace std;

// function to calculate Hamming distance
int hammingDist(char *str1, char *str2)
{
    int i = 0, count = 0;
    while (str1[i] != '\0')
    {
        if (str1[i] != str2[i])
            count++;
        i++;
    }
    return count;
}

// driver code
int main()
{
    char str1[] = "@NwokeViolet";
    char str2[] = "@VioletNwoke";



    cout<<"Violet Nwoke, gombav@yahoo.com, @VioletNwoke, genomics, @NwokeViolet,  ";
// function call
    cout << hammingDist (str1,str2);

  ofstream file ("output.txt");
  file << "Violet Nwoke, gombav@yahoo.com, @VioletNwoke, genomics, @NwokeViolet,9";
  file.close();

    return 0;
}
