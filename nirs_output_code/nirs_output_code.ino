//Written by Aman Pishu Ganglani 2018 
// MPU-9250 Digital Motion Processing (DMP) Library
#include <SparkFunMPU9250-DMP.h>
// SD Library manages file and hardware control
#include <SD.h>
#define SerialPort SerialUSB 
MPU9250_DMP imu; // Create an instance of the MPU9250_DMP class
void setup() {
  // put your setup code here, to run once:
  SerialPort.begin(115200);
  imu.begin();
  imu.setSensors(INV_XYZ_GYRO | INV_XYZ_ACCEL | INV_XYZ_COMPASS); //enable all sensors
  // Use setGyroFSR() and setAccelFSR() to configure the
  // gyroscope and accelerometer full scale ranges.
  // Gyro options are +/- 250, 500, 1000, or 2000 dps
  imu.setGyroFSR(250); // Set gyro to 2000 dps
  // Accel options are +/- 2, 4, 8, or 16 g
  imu.setAccelFSR(2); // Set accel to +/-2g
  imu.setSampleRate(147); //sample rate of the accelerometer/gyroscope
  imu.setCompassSampleRate(147); //sample rate of the magnetometer 
  //imu.setSampleRate(166);
  //imu.setCompassSampleRate(166);
  imu.setLPF(250); 
  //led off
  pinMode(LED_BUILTIN,OUTPUT);
}

void loop() {
  // put your main code here, to run repeatedly:
{
  // dataReady() checks to see if new accel/gyro data
  // is available. It will return a boolean true or false
  if ( imu.dataReady() )
  {
    imu.update(UPDATE_ACCEL | UPDATE_GYRO | UPDATE_COMPASS);
    printIMUData();
    //led experiment 
    digitalWrite(LED_BUILTIN, LOW);
  }
}
}

void printIMUData(void)
{
  float magX = imu.calcMag(imu.mx);
  float magY = imu.calcMag(imu.my);
  float magZ = imu.calcMag(imu.mz);
  SerialPort.print(String(imu.ax) + ", " + String(imu.ay) + ", " + String(imu.az) + ", ");
  SerialPort.print(String(imu.gx) + ", " + String(imu.gy) + ", " + String(imu.gz) + ", ");
  SerialPort.println(String(magX) + ", " + String(magY) + ", " + String(magZ)); 
}
