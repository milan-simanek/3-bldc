#ifndef _ROT_H_
#define _ROT_H_

extern int Rot;			// current rotation speed
extern int Accel;		// current acceleration
extern int RQAccel, RQRot;	// requested acceleration, rotation speed
extern char RQA;		// requested speed/accel switch (1=requested accel, 0=requested speed)
extern int8_t MotorAction, Fault, WaitToStop;

void MotorOFF(void);		// turn motor off
void StopMotor(void);		// turn motor off and waits until rotation really stops

void InitRot(void);
void InitFault(void);

#endif
