#ifndef _SENSOR_H_
#define _SENSOR_H_

#define ASM_INT0	// INT0 implemented in assembler
#define ASM_INT1	// INT1 implemented in assembler

/* Motor: 1 signal period = 6 phases
          1 physical round (360°) = 4 signal periods
   Rotary encoder: ROT_MARKS marks and ROT_MARKS spaces
                   step detected by both raising and falling edges of sensor STEP_A
                   sensor STEP_B is used to detect direction
   SENSORSTEPS=ROT_MARKS*2/4  (2=raising+falling, 4=signal periods per physical 360°)
 */
//#define SENSORSTEPS (72*2/4)	/* 72 marks, 2=raising+falling, 4=signal periods per physical 360° */
#define SENSORSTEPS (48*2/4)	/* 48 marks, 2=raising+falling, 4=signal periods per physical 360° */

#define PHASESTEPS (SENSORSTEPS/6)

#if SENSORSTEPS == 36
  #define StepPlus(pf)	do { pf+=8; if (pf & 0x3F ) pf--; } while (0)
  #define StepMinus(pf)	do { if (pf & 0x3F) pf-=7; else pf-=8; } while (0)
#elif SENSORSTEPS == 24
  #define StepPlus(pf)	do { pf+=10; if (pf & 0x1F ) pf++; } while (0)
  #define StepMinus(pf)	do { if (pf & 0x1F) pf-=11; else pf-=10; } while (0)
#else
  #error "wrong value SENSORSTEPS (only 24 or 36 is supported)"
#endif


#ifndef __ASSEMBLER__

extern uchar PosFract8, PosRots;
extern uchar SensorOffset8, SensorDetecting;
extern uchar d2;

void OutPhase(uchar phase);
void MotorOFF(void);
void MotorLOW(void);
void InitSensor(void);
#endif

#endif
