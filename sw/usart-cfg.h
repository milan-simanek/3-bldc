
//#define COLDET                  // enable collision detection using Timer0
//#define COLDETLIMIT     30      // minimum number of inactive RX-bits to switch into idle state
#define BAUD            38400	// baud rate
#define TXBUFLEN        (1<<6)	// TX buffer size
#define RXBUFLEN        (1<<4)	// RX buffer size
//#define RXERRS2BYTES		// 2-bytes RxErrors variable (otherwise 1-byte)
//#define NEGATIVE_DRIVE	// signal DRIVE active low
//#define POSITIVE_DRIVE	// signal DRIVE active high
# define HAVE_USARTSENDCHAR	// is void UsartSendChar(char c) needed?
