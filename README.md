# Mobile Robot Navigation Using Q-Learning

## Overview
This project implements path planning for a mobile robot using Q-Learning in MATLAB and Simulink. The robot learns to navigate in a grid-like environment, optimizing its path based on rewards.
<p> <img src="https://github.com/user-attachments/assets/28bf754f-6b09-4107-a2c2-a1ca95ec814d" width="1000"> </p> 

## Features
- **Q-Learning Algorithm:** Implements reinforcement learning for navigation.
- **Simulink Model:** Simulates robot control and movement.
- **Visualization:** Plots the path and environment.

## File Structure
- `map_R.m`: Defines the environment's reward matrix.
- `plotter.m`: Plots the robot's navigation path.
- `singleRobotControl.slx`: Simulink model for robot control.
- `readme.txt`: Project details.

---

## Installation

### Prerequisites
- MATLAB version R2022b or later (with Simulink)

### Steps
1. **Clone the repository:**
   ```bash
   git clone https://github.com/AminLari/Mobile_Robot_Navigation_Using_QLearning.git
   cd Mobile_Robot_Navigation_Using_QLearning


2. **Run the Simulink model:**
   Open singleRobotControl.slx in MATLAB Simulink and run the simulation.
<p> <img src="https://github.com/user-attachments/assets/aebb5aa6-802c-4333-9776-4daa0d130de2" width="1000"> </p> 

3. **Visualize the path:**
   Run plotter.m after configuring the map with map_R.m.

## Usage
1. **Modify the environment:**
   Update map_R.m to change the reward matrix.

2. **Simulate navigation:**
   Use Simulink to run the robot's navigation and observe how it learns the optimal path.

## Results
- Execute plotter.m to visualize the results.
  <p> <img src="https://github.com/user-attachments/assets/f5339b35-7c7b-4d41-8ffb-22478599aa48" width="1000"> </p>

## Contact
For questions or suggestions, please contact Amin Lari.

