#include <detpic32.h>

int main()
{
    static const char disp7Scodes[16] = {0x3F, 0x06, 0x5B, 0x4F, 0x66, 0x6D, 0x7D, 0x07, 0x7F, 0x67, 0x77, 0x7C, 0x39, 0x5E, 0x79, 0x71};

    // configure RB0 to RB3 as inputs
    TRISB |= 0x000F;
    // configure RB8-RB14 as outputs
    TRISB &= 0x80FF;

    // Select display high
    TRISD &= 0xFFBF;

    // enable display high (RD6)
    // Reset bit6 to 0   //  define bit1 = 1
    LATD = (LATD & 0xFFBF) | 0x0040;

    while (1)
    {

        unsigned int c = PORTB & 0x000F;
        LATB = (LATB & 0x80FF) | disp7Scodes[c] << 8;
    }

    return 0;
}
