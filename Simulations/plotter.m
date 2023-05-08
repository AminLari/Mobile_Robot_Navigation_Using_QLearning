%clear all
clc

%% Initialization

viz = Visualizer2D;
viz.showTrajectory = false;
load exampleMap
p = zeros(47,60);
p(1,:) = ones(1, size(p,2));
p(size(p,1),:) = ones(1, size(p,2));
p(:,1) = ones(size(p,1),1);
p(:,size(p,2)) = ones(size(p,1),1);

%% Obstacles

objects = [10 1; 10 2; 10 3; 10 4; 10 5; 10 6; 10 7; 10 8; 10 9; 10 10; 10 31; 10 32; 10 33; 10 34;10 35; 10 36; 10 37; 10 38; 10 39; 10 40; 10 41; 10 42; 10 43; 10 44; 10 45; 10 46];
objects2 = [5 10; 5 11; 5 12; 5 13; 5 14; 5 15; 5 16; 5 17; 5 18; 5 19; 5 20; 5 31; 5 32; 5 33; 5 34; 5 35; 5 36; 5 37; 5 38; 5 39; 5 40];
objects3 = [15 21; 15 22; 15 23; 15 24; 15 25; 15 26; 15 27; 15 28; 15 29; 15 30; 15 31; 15 32; 15 33; 15 34; 15 35; 15 36; 15 37; 15 38; 15 39; 15 40];
objects4 = [20 31; 20 32; 20 33; 20 34; 20 35; 20 36; 20 37; 20 38; 20 39; 20 40; 20 41; 20 42; 20 43; 20 44; 20 45; 20 46];
objects7 = [30 1; 30 2; 30 3; 30 4; 30 5; 30 6; 30 7; 30 8; 30 9; 30 10; 30 11; 30 12; 30 13; 30 14; 30 15; 30 16; 30 17; 30 18; 30 19; 30 20; 30 21; 30 22; 30 23; 30 24; 30 25; 30 26; 30 27; 30 28; 30 29; 30 30];
objects8 = [25 31; 25 32; 25 33; 25 34; 25 35; 25 36; 25 37; 25 38; 25 39; 25 40];
objects10 = [40 20; 40 21; 40 22; 40 23; 40 24; 40 25; 40 26; 40 27; 40 28; 40 29; 40 30; 40 31; 40 32; 40 33; 40 34; 40 35; 40 36; 40 37; 40 38; 40 39; 40 40];
objects12 = [45 10; 45 11; 45 12; 45 13; 45 14; 45 15; 45 16; 45 17; 45 18; 45 19; 45 20; 45 21; 45 22; 45 23; 45 24; 45 25; 45 26; 45 27; 45 28; 45 29; 45 30; 45 40; 45 41; 45 42; 45 43; 45 44; 45 45; 45 46];
objects13 = [52 1; 52 2; 52 3; 52 4; 52 5; 52 6; 52 7; 52 8; 52 9; 52 10; 52 11; 52 12; 52 13; 52 14; 52 15; 52 16; 52 17; 52 18; 52 19; 52 20];

objects5 = [5 20; 6 20; 7 20; 8 20; 8 20; 9 20; 10 20; 11 20; 12 20; 13 20; 14 20; 15 20];
objects6 = [10 10; 11 10; 12 10; 13 10; 14 10; 15 10; 16 10; 17 10; 18 10; 19 10; 20 10; 25 10; 26 10; 27 10; 28 10; 29 10; 30 10; 35 10; 36 10; 37 10; 38 10; 39 10; 40 10; 41 10; 42 10; 43 10; 44 10; 45 10];
objects9 = [25 40; 26 40; 27 40; 28 40; 29 40; 30 40; 31 40; 32 40; 33 40; 34 40; 35 40; 36 40; 37 40; 38 40; 39 40; 40 40];
objects11 = [30 30; 31 30; 32 30; 33 30; 34 30; 35 30; 36 30; 37 30; 38 30; 39 30; 40 30];
objects14 = [46 40; 47 40; 48 40; 49 40; 50 40; 51 40; 52 40; 52 30; 53 30; 54 30; 55 30; 56 30; 57 30; 58 30; 59 30];

%% Margins

loc = zeros(size(p,2), size(p,1));
loc(1,:) = ones(1, size(loc,2));
loc(size(loc,1),:) = ones(1, size(loc,2));
loc(:,1) = ones(size(loc,1),1);
loc(:,size(loc,2)) = ones(size(loc,1),1);

%% Visualization
for i = 1:1:size(objects,1)
    p(size(p,1) - objects(i,2) + 1, objects(i,1) + 1) = 1;
    loc(objects(i,1), objects(i,2)) = 1;
end
for i = 1:1:size(objects2,1)
    p(size(p,1) - objects2(i,2) + 1, objects2(i,1) + 1) = 1;
    loc(objects2(i,1), objects2(i,2)) = 1;
end
for i = 1:1:size(objects3,1)
    p(size(p,1) - objects3(i,2) + 1, objects3(i,1) + 1) = 1;
    loc(objects3(i,1), objects3(i,2)) = 1;
end
for i = 1:1:size(objects4,1)
    p(size(p,1) - objects4(i,2) + 1, objects4(i,1) + 1) = 1;
    loc(objects4(i,1), objects4(i,2)) = 1;
end
for i = 1:1:size(objects5,1)
    p(size(p,1) - objects5(i,2) + 1, objects5(i,1) + 1) = 1;
    loc(objects5(i,1), objects5(i,2)) = 1;
end
for i = 1:1:size(objects6,1)
    p(size(p,1) - objects6(i,2) + 1, objects6(i,1) + 1) = 1;
    loc(objects6(i,1), objects6(i,2)) = 1;
end
for i = 1:1:size(objects7,1)
    p(size(p,1) - objects7(i,2) + 1, objects7(i,1) + 1) = 1;
    loc(objects7(i,1), objects7(i,2)) = 1;
end
for i = 1:1:size(objects8,1)
    p(size(p,1) - objects8(i,2) + 1, objects8(i,1) + 1) = 1;
    loc(objects8(i,1), objects8(i,2)) = 1;
end
for i = 1:1:size(objects9,1)
    p(size(p,1) - objects9(i,2) + 1, objects9(i,1) + 1) = 1;
    loc(objects9(i,1), objects9(i,2)) = 1;
end
for i = 1:1:size(objects10,1)
    p(size(p,1) - objects10(i,2) + 1, objects10(i,1) + 1) = 1;
    loc(objects10(i,1), objects10(i,2)) = 1;
end
for i = 1:1:size(objects11,1)
    p(size(p,1) - objects11(i,2) + 1, objects11(i,1) + 1) = 1;
    loc(objects11(i,1), objects11(i,2)) = 1;
end
for i = 1:1:size(objects12,1)
    p(size(p,1) - objects12(i,2) + 1, objects12(i,1) + 1) = 1;
    loc(objects12(i,1), objects12(i,2)) = 1;
end
for i = 1:1:size(objects13,1)
    p(size(p,1) - objects13(i,2) + 1, objects13(i,1) + 1) = 1;
    loc(objects13(i,1), objects13(i,2)) = 1;
end
for i = 1:1:size(objects14,1)
    p(size(p,1) - objects14(i,2) + 1, objects14(i,1) + 1) = 1;
    loc(objects14(i,1), objects14(i,2)) = 1;
end

mapRooz = binaryOccupancyMap(p, 1);
viz.mapName = 'mapRooz';
pose = [55; 15; -pi/4];
viz(pose)
xlim([0,size(p,2)]);
ylim([0,size(p,1)]);

%% Plot Q-Learning generated path evolution

hold on
for i = 1:60
    [myQ,mypo,myV,mypath] = Q_learning_p(loc,[4,4],[55,15],0.0001,i);
    ran = rand(size(mypath,1),2);
    ran = ran/1.5;
     mypath(:,1) = mypath(:,1)+ran(:,1);
     mypath(:,2) = mypath(:,2)+ran(:,2);

    if mod(i,5) == 0
        plot(mypath(:,1),mypath(:,2),'color',[(60-i)/60 i/60 0],'lineWidth',1.2);
        legend('Orientation ','Robot ','i = 5','i = 10','i = 15','i = 20','i = 25','i = 30','i = 35','i = 40','i = 45','i = 50','i = 70','i = 100' );
    end
end
