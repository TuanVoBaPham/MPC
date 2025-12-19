nx = 2; % 2 states
ny = 2; % 2 outputs
nu = 3; % 3 inputs
Ts = 0.1; % Prediction sample time
PredictionHorizon = 20;
ControlHorizon = 5;
nlobj = nlmpc(nx,ny,nu);
nlobj.Ts = Ts;
nlobj.PredictionHorizon = PredictionHorizon;
nlobj.ControlHorizon = ControlHorizon;
Model.StateFcn = "StateFunction";
Model.OutputFcn = "OutputFunction";
nlobj.Model.IsContinuousTime = true;

%x0 = [0; 0];
%u0 = [0; 0; 0];
%validateFcns(nlobj,x0,u0,[]);

nlobj.Weights.OutputVariables = [1 1];
nlobj.Weights.ManipulatedVariables = [0.1 0.1 0.1];
nlobj.Weights.ManipulatedVariablesRate = [0.1 0.1 0.1];

nlobj.Optimization.SolverOptions.Algorithm = 'sqp';  
nlobj.Optimization.SolverOptions.MaxIterations = 400;  
nlobj.Optimization.SolverOptions.StepTolerance = 1e-6; 
nlobj.Optimization.SolverOptions.ConstraintTolerance = 1e-6;
nlobj.Optimization.SolverOptions.OptimalityTolerance = 1e-6; 