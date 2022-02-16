#ifndef _COM_H_
#define _COM_H_

const char *ComGetMsg(void); // returns a received message (available only if Action&ACT_COM)
void ComDelMsg(void);	// removes a messsage from RX buffer and sets ACT_COM Action if next msg is available

#endif
