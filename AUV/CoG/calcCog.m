clc, cla, clear
hold all
axis([0 70 -15 15])
axis equal

TailLength = 17.5;
MidLength = 20.5;
FrontLength = 21;
VehicleDiameter = 21.5;

AUVMasses = makeAUVMasses(FrontLength, MidLength, TailLength);

% Total Mass
MassT = 0;
for ndx = 1:length(AUVMasses)
    MassT = MassT + AUVMasses(ndx).m;
end

% CoG
WeightedSum = [0,0,0]';
for ndx = 1:length(AUVMasses)
    WeightedSum = WeightedSum + AUVMasses(ndx).m*AUVMasses(ndx).returnPos();
end

R_cog = (1/MassT)*WeightedSum;

% Outline Vehicle
line([0, (TailLength + MidLength + FrontLength)], [VehicleDiameter/2, VehicleDiameter/2], 'Color', 'k');
line([0, (TailLength + MidLength + FrontLength)], [-VehicleDiameter/2, -VehicleDiameter/2], 'Color', 'k');
line([0, 0], [-VehicleDiameter/2, VehicleDiameter/2], 'Color', 'k');
line([(TailLength + MidLength + FrontLength), (TailLength + MidLength + FrontLength)], [-VehicleDiameter/2, VehicleDiameter/2], 'Color', 'k');

% Section Lines
line([TailLength, TailLength], [-VehicleDiameter/2, VehicleDiameter/2], 'Color', 'k', 'LineStyle', '--');
line([TailLength + MidLength, TailLength + MidLength], [-VehicleDiameter/2, VehicleDiameter/2], 'Color', 'k', 'LineStyle', '--');

% Centerlines
line([0.5*(TailLength + MidLength + FrontLength), 0.5*(TailLength + MidLength + FrontLength)], ...
    [-VehicleDiameter/2, VehicleDiameter/2], 'Color', 'r', 'LineStyle', ':');
line([0, (TailLength + MidLength + FrontLength)], ...
    [0, 0], 'Color', 'r', 'LineStyle', ':');


% Plot Masses
for ndx = 1:length(AUVMasses)
    plot(AUVMasses(ndx), 'bo');
end

% Plot CoG
plot(R_cog(1), R_cog(2), 'r*');


