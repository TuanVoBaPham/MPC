**Model Predictive Control (MPC) Simulation**
-----
This repository contains a Model Predictive Control (MPC) implementation using MATLAB and Simulink. The project is based on a state-space model of the controlled system and demonstrates how MPC is configured, simulated, and executed.

**MPC_6wd6ws.slx**
<br>
Simulink model implementing the Model Predictive Control (MPC) algorithm.
<br>
Used to simulate the closed-loop behavior of the system under MPC control.
<br>
Integrates the state-space model, MPC controller, and reference signals.

**OutputFunction.m**
<br>
MATLAB function defining the system output variables.
<br>
Outputs are computed based on the state-space representation of the plant.
<br>
Used by the MPC algorithm to evaluate tracking performance and constraints.

**StateFunction.m**
<br>
MATLAB function defining the state dynamics of the system.
<br>
Implements the state-space model used for prediction inside the MPC.
<br>
Provides state update equations for simulation and optimization.

**nlobj_config.m**
<br>
MATLAB configuration file for the MPC optimization problem.
<br>
Defines: Prediction horizon, Control horizon, Constraints on states and inputs, Cost function weights, Used to initialize and run the MPC algorithm.
