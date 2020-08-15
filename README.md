# 1-MPU-Motion-Research-UCL-DOTHUB
This repository includes the scripts to run a motion research experiment. The creators of this project are Sabrina Brigadoi, Aman Ganglani, Hubin Zhao and Robert Cooper. The experiment is further described in this paper: https://www.spiedigitallibrary.org/conference-proceedings-of-spie/11074/1107405/Integrating-motion-sensing-and-wearable-modular-high-density-diffuse-optical/10.1117/12.2527197.short?SSO=1

MPU Used: Sparkfun Razor 9DoF IMU Breakout Board 

Main instructions:
Ensure MPU is connected correctly with the Arduino API installed
Ensure computer in use is a 4 core PC with the parralel computing toolbox installed
Start demo_sound_script and explain to the participant how the experiment works 
Start main_script_start_this to run the experiment 

Brief explanation of scripts and dependencies:
nirs_output_code: Arduino code required to program the MPU. Dependent on the MPU library being installed from the Sparkfun website
chirp_generator: Generates the full sound which will be played according to the paradigm file
chirp_start_2: Plays the full sound
Command_words: Displays the experiment instructions in the console for the participant and researcher
Convert_MPU_data: Used in postprocessing to convert the raw MPU data into familiar units
demo_sound_script: Used to play the sounds as a demo to the participant before starting the experiment
main_script_start_this: This is the only script which needs to be run. It uses the parralel computing toolbox to call other functions at the same time. Requires the toolbox to be installed along with a 4 core PC
MPU_analysis_normal: A preliminary analysis script which plots the MPU readings of the experiment 
MPU_start: Initializes the MPU when the experiment begins 