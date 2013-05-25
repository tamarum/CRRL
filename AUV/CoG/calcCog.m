clc, cla, clear
hold all
axis([0 70 -15 15 -10 10])
axis equal
grid on


TailLength = 17.5;
MidLength = 20.5;
FrontLength = 21;
VehicleDiameter = 21.5;

AUVMasses = makeAUVMasses2(FrontLength, MidLength, TailLength);

% Center of Buoyancy
CoB = [36.223, 0.003, 0.901]'; % x, y, z

% Total Mass
MassT = 0;
for ndx = 1:length(AUVMasses)
    MassT = MassT + AUVMasses(ndx).m;
end

% CoG
WeightedSum = [0,0,0]';

% Inertia Tensor
I = zeros(3, 1);

for ndx = 1:length(AUVMasses)
    WeightedSum = WeightedSum + AUVMasses(ndx).m*AUVMasses(ndx).returnPos();
end

R_cog = (1/MassT)*WeightedSum;

for ndx = 1:length(AUVMasses)
    I = I + AUVMasses(ndx).m*([0,1,1;1,0,1;1,1,0]*((AUVMasses(ndx).returnPos() - R_cog).^2));
end

% Radius of Gyration
RoG = sqrt((1/MassT)*I);
disp('Radius of Gyration, cm');
disp(RoG);

%Frequency of Oscillation
FoOsc = sqrt(981.0*1)*(1./RoG); %Rad/Sec
FoOscH = FoOsc/(2*pi); %Hz
disp('Frequency of Oscillaion, Hz');
disp(FoOscH);

% Outline Vehicle
line([0, (TailLength + MidLength + FrontLength)], [VehicleDiameter/2, VehicleDiameter/2], 'Color', 'k', 'LineWidth' , 3);
line([0, (TailLength + MidLength + FrontLength)], [-VehicleDiameter/2, -VehicleDiameter/2], 'Color', 'k', 'LineWidth' , 3);
line([0, 0], [-VehicleDiameter/2, VehicleDiameter/2], 'Color', 'k', 'LineWidth' , 3);
line([(TailLength + MidLength + FrontLength), (TailLength + MidLength + FrontLength)], [-VehicleDiameter/2, VehicleDiameter/2], 'Color', 'k', 'LineWidth' , 3);

% Section Lines
line([TailLength, TailLength], [-VehicleDiameter/2, VehicleDiameter/2], 'Color', 'k', 'LineStyle', '--', 'LineWidth' , 3);
line([TailLength + MidLength, TailLength + MidLength], [-VehicleDiameter/2, VehicleDiameter/2], 'Color', 'k', 'LineStyle', '--', 'LineWidth' , 3);

% Centerlines
line([0.5*(TailLength + MidLength + FrontLength), 0.5*(TailLength + MidLength + FrontLength)], ...
    [-VehicleDiameter/2, VehicleDiameter/2], 'Color', 'r', 'LineStyle', ':', 'LineWidth' , 3);
line([0, (TailLength + MidLength + FrontLength)], ...
    [0, 0], 'Color', 'r', 'LineStyle', ':', 'LineWidth' , 3);


% Plot Masses
for ndx = 1:length(AUVMasses)
    %plot(AUVMasses(ndx), 'bo');
    plot3(AUVMasses(ndx), 'bo', 'LineWidth' , 3);
end

% Plot CoG
plot3(R_cog(1), R_cog(2), R_cog(3), 'r*', 'LineWidth' , 3);

% Plot CoB
plot3(CoB(1), CoB(2), CoB(3), 'g*', 'LineWidth' , 3);

% Plot CoG-B Line
plot3([R_cog(1), CoB(1)],[R_cog(2), CoB(2)], [R_cog(3), CoB(3)], 'r-', 'LineWidth' , 3);

xlabel('X')
ylabel('Y')
zlabel('Z')



