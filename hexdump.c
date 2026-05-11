// Aidan Bliss
#include <stdio.h>
#include <ctype.h>

int main(int argc, char *argv[]) {
  FILE *fp = fopen(argv[1], "rb"); // open the file

  unsigned char buf[16]; // 16 is the bytes per row of 2nd colomn
  long hexAddy = 0; // number of bytes into the file
  size_t n;

  n = fread(buf, 1, 16, fp); // take 16 bytes from the file and store them
  while (n > 0) { // while n is not empty
    printf("%08lx  ", hexAddy); // print the address for the bytes

    // hex printing
    for (size_t i = 0; i < 16; i++) {
      if (i < n)
        printf("%02x ", buf[i]);

      if (i == 7)
        printf(" "); // for formatting
    }

    printf(" |");

    // printing the ASCII
    for (size_t i = 0; i < n; i++)
      printf("%c", isprint(buf[i]) ? buf[i] : '.'); // tries to print ascii, if it fails it prints a period

    printf("|\n");

    hexAddy += n; // increment address
    n = fread(buf, 1, 16, fp); // read the next 16 bytes
  }

  fclose(fp); // close the file
  return 0;
}