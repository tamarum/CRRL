function AUVMasses = makeAUVMasses1(FrontLength, MidLength, TailLength)

% Front Section
front = MassAUV;
front.m = 408;
%front.x = TailLength + MidLength + 0.5*FrontLength;
front.x = 48.955;
front.y = -0.003;
front.z = -0.550;

% Mid Section
mid = MassAUV;
mid.m = 270;
%mid.x = TailLength + 0.5*MidLength;
mid.x = 27.630;
mid.y = 0.012;
mid.z = 0.959;

% Tail Section
% Includes servos, housings, fins, shafts, propellers, 
tail = MassAUV;
tail.m = 270;
%tail.x = 0.5*TailLength;
tail.x = 9.617;
tail.y = -0.008;
tail.z = 0.259;

% Motors
m1 = MassAUV;
m2 = MassAUV;

m1.m = 90 + 14.5; % 14.5 for housings and screws
m1.x = TailLength - 2.5;
m1.y = 6.5;

m2.m = 90 + 14.5; % 14.5 for housings and screws
m2.x = TailLength - 2.5;
m2.y = -6.5;


%Batteries
b1 = MassAUV;
b2 = MassAUV;
b3 = MassAUV;
b4 = MassAUV;
b5 = MassAUV;
b6 = MassAUV;
b7 = MassAUV;
b8 = MassAUV;

b1.m = 123;
b2.m = 123;
b3.m = 123;
b4.m = 123;
b5.m = 123;
b6.m = 123;
b7.m = 123;
b8.m = 123;

% 6.5 cm is the battery length
b1.x = TailLength + (6.5/2) + 1;
b2.x = TailLength + (6.5/2) + 1;
b3.x = TailLength + (6.5/2) + 1;
b4.x = TailLength + (6.5/2) + 1;

b5.x = b1.x + 6.5;
b6.x = b2.x + 6.5;
b7.x = b3.x + 6.5;
b8.x = b4.x + 6.5;

b1.y = 7.5;
b1.z = 1.75 - 2.2416; % 2.2416 is the offset from the bottom of the back of
% the midsection to the origin in the z direction


b2.y = 2.5;
b2.z = 1.25 - 2.2416;

b3.y = -2.5;
b3.z = 1.25 - 2.2416;

b4.y = -7.5;
b4.z = 1.75 - 2.2416;

b5.y = 7.5;
b5.z = 1.75 -  2.7194; % 2.7194 is the offset from the bottom of the back of
% the midsection to the origin in the z direction

b6.y = 2.5;
b6.z = 1.25 - 2.7194;

b7.y = -2.5;
b7.z = 1.25 - 2.7194;

b8.y = -7.5;
b8.z = 1.75 - 2.7194;

%AP with Wireless
ap = MassAUV;
ap.m = 61;
ap.x = TailLength + MidLength + 12;
ap.y = 0;
ap.z = -0.5 + 1.5; % 1.5 is the offset from the top of the nose ballast
% to the origin in the z direction

%Remote Receiver
rcvr = MassAUV; 
rcvr.m = 5;
rcvr.x = TailLength + MidLength + 2.75;
rcvr.y = 0;
rcvr.z = 6.5278; % 6.5278 is the offset from the top of the back of
% the front section to the origin in the z direction

%Power Board
pwrBrd = MassAUV;
pwrBrd.m = 13;
pwrBrd.x = TailLength + 6;
pwrBrd.y = 0;
pwrBrd.z =  4.5156; % 4.5156 is the calculated height from the
% mid line at x = TailLength + 6

%Power Wires
pwrWires = MassAUV;
pwrWires.m = 50;

%Balance Wires
balWires = MassAUV;
balWires.m = 15;

%ESCs with wires
escs = MassAUV;
escs.m = 62;
escs.x = TailLength - 2;

%GEDC with wires
gedc = MassAUV;
gedc.m = 71;
gedc.x = TailLength + MidLength - (2.5/2);
gedc.y = 0;
gedc.z = -1.2 + 6.5278; % 6.5278 is the offset from the top of the back of
% the front section to the origin in the z direction

%Echosounder with wire
echoSound = MassAUV;
echoSound.m = 37;
echoSound.x = TailLength + MidLength + FrontLength;

%Echosounder Electronics
echoElec = MassAUV;
echoElec.m = 20;
echoElec.x = TailLength + MidLength + 3;
echoElec.y = 0;
echoElec.z = -3.436 + 1;

%Nosecone Water
noseWater = MassAUV;
noseWater.m = 39.7;
noseWater.x = TailLength + MidLength + FrontLength + 1;
noseWater.y = 0;
noseWater.z = 0;

%Ballast Cup
balCup = MassAUV;
balCup.m = 50;
balCup.x = TailLength + MidLength + 13.5;

%Nosecone Ballast
noseBal1 = MassAUV;
noseBal2 = MassAUV;
noseBal3 = MassAUV;

noseBal1.m = 495;
noseBal2.m = 495;
noseBal3.m = 495;

noseBal1.x = balCup.x - 3;
noseBal1.y = -1;
noseBal1.z = 3.5 - 3.436; % 3.436 is the offset from the bottom of the back of
% the front section to the origin in the z direction

noseBal2.x = balCup.x + 1.5;
noseBal2.y = 2;
noseBal2.z = 3.5 - 3.436;

noseBal3.x = balCup.x + 3;
noseBal3.y = -2;
noseBal3.z = 3.5 - 3.436;

%Mid Ballast
midBal1 = MassAUV;
midBal2 = MassAUV;
midBal3 = MassAUV;

midBal1.m = 340.194;
midBal2.m = 340.194;
midBal3.m = 300;

midBal1.x = TailLength + MidLength - 2.25 - 8;
midBal1.y = 2.5;
midBal1.z = 0.9 - (2.0944); %  2.0944 is the calculated height from the
% mid line at x = TailLength + MidLength - 2.25

midBal2.x = TailLength + MidLength - 2.25 - 8;
midBal2.y = -2.5;
midBal2.z = 0.9 - (2.0944);

midBal3.x = TailLength + MidLength - (4.69/2);
midBal3.y = 0;
midBal3.z = (0.64/2) - (3.436);

%Mid Stuffing
midStuff = MassAUV;
midStuff.m = 36;
midStuff.x = TailLength;
midStuff.y = 0;
midStuff.z = 0;

%GPS
gps = MassAUV;
gps.m = 5;
gps.x = rcvr.x;
gps.y = 0;
gps.z = rcvr.z;

% Counter Balance
counterBal = MassAUV;
counterBal.m = 425.25;
counterBal.x = TailLength;
counterBal.y = 0;
counterBal.z = 3.683;

% Missing Mass
missMass = MassAUV;
%missMass.m = 226.8 + 453/2 - 75;
missMass.m = 50;
missMass.x = TailLength + MidLength + FrontLength;
missMass.y = 0;
missMass.z = 0;

% 

AUVMasses = [ 
    front, mid, tail, ...
    m1, m2, ...
    escs, ...
    echoSound, ...
    balCup, noseBal1, noseBal2, noseBal3, midBal1, midBal2, midBal3...
    b1, b2, b3, b4, b5, b6, b7, b8, ...
    ap, gedc, gps, echoElec, pwrBrd, rcvr, noseWater, midStuff...
    %missMass
    %pwrWires, balWires, ...
];