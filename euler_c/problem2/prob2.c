#include <stdio.h>

#define LIMIT 4000000
#define ERROR -1

int main(int argc, char* argv[]){
  unsigned long a = 1;
  unsigned long b = 1;
  unsigned long c = a + b;

  while(c < LIMIT) {
    static unsigned long sum = 0;
    if(c & 1 == 0) {
	sum += c;
    };
    a = b;
    b = c;
    c = a + b;
    if(c > LIMIT) {
      printf("The sum of even fibonnaci numbers is: %lu \n", sum);
    };
  };

  return 0;
};
