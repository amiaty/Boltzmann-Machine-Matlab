%% Experiment for the encoder problems in papers
clc;
clear;

%% v: training set consists of four binary data with length of 8
v = [1 0 0 0 1 0 0 0; 0 1 0 0 0 1 0 0; 0 0 1 0 0 0 1 0; 0 0 0 1 0 0 0 1];
%v(v == 0) = -1; % uncomment this if u want to work in bipolar mode

[adj, places] = CreateDecoderAdjacencyMat(4, 2);

% Cooling schedule for temperature in the algorithm,
% Each row consists of two number, number of epoch(s) and corresponding temperature
schedule= [2 20; 2 15; 2 12; 4 10];
%schedule = [ 40 20; 40 15; 40 12; 40 10];
%schedule = [ 40 20; 40 15; 40 12; 40 10;40 8;40 6; 40 5];

% Parameters for make training data noisy (for more details refer to the paper)
pNoise = [0.05 0.15];
%pNoise = [0.005 0.015];
%pNoise = [0 0];

%% Make an object from the model and train it
b1 = BoltzmannMachine(8, 2, adj, 'binary');
b1 = b1.TrainBatch(v, 2000, 2, schdule, 10, 'static', 2, pNoise);

%% show graphical picture for the trained model weights
img = b1.Draw(places, 1);
imshow(img);


schduleGentle = [ 40 20; 40 15; 40 12; 40 10;40 8;40 6; 40 5];

%% test the model for reconstruction (denoising) of the training set
v = b1.Complete([1 0 0 0 0 0 0 0], [1 1 1 1 0 0 0 0 0 0], schduleGentle);
disp(v);

v = b1.Complete([0 1 0 0 0 0 0 0], [1 1 1 1 0 0 0 0 0 0], schduleGentle);
disp(v);

v = b1.Complete([0 0 1 0 0 0 0 0], [1 1 1 1 0 0 0 0 0 0], schduleGentle);
disp(v);

v = b1.Complete([0 0 0 1 0 0 0 0], [1 1 1 1 0 0 0 0 0 0], schduleGentle);
disp(v);
