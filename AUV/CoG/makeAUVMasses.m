function AUVMasses = makeAUVMasses(FrontLength, MidLength, TailLength)

% Front Section
front = MassAUV;
front.m = 408;
front.x = TailLength + MidLength + 0.5*FrontLength;

% Mid Section
mid = MassAUV;
mid.m = 270;
mid.x = TailLength + 0.5*MidLength;

% Tail Section
tail = MassAUV;
tail.m = 270;
tail.x = 0.5*TailLength;

% Motors
m1 = MassAUV;
m2 = MassAUV;

m1.m = 90;
m1.x = TailLength - 2.5;
m1.y = 6.5;

m2.m = 90;
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

b1.m = 117;
b2.m = 117;
b3.m = 117;
b4.m = 117;
b5.m = 117;
b6.m = 117;
b7.m = 117;
b8.m = 117;

b1.x = TailLength + MidLength - 16;
b2.x = TailLength + MidLength - 16;
b3.x = TailLength + MidLength - 16;
b4.x = TailLength + MidLength - 16;
b5.x = TailLength + MidLength - 16;
b6.x = TailLength + MidLength - 16;
b7.x = TailLength + MidLength - 16;
b8.x = TailLength + MidLength - 16;

b1.y = 7.5;
b2.y = 2.5;
b3.y = -2.5;
b4.y = -7.5;
b5.y = 5;
b6.y = 0;
b7.y = -5;
b8.y = 0;

%AP with Wireless
ap = MassAUV;
ap.m = 61;

%Remote Receiver
rcvr = MassAUV; 
rcvr.m = 5;

%Power Board
pwrBrd = MassAUV;
pwrBrd.m = 13;

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

%Echosounder with wire
echoSound = MassAUV;
echoSound.m = 37;
echoSound.x = TailLength + MidLength + FrontLength;

%Echosounder Electronics
echoElec = MassAUV;
echoElec.m = 20;

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

noseBal2.x = balCup.x + 1.5;
noseBal2.y = 2;

noseBal3.x = balCup.x + 3;
noseBal3.y = -2;

%Mid Ballast
midBal1 = MassAUV;
midBal2 = MassAUV;

midBal1.m = 495;
midBal2.m = 495;

midBal1.x = TailLength + MidLength - 9.5;
midBal1.y = 2.5;

midBal2.x = TailLength + MidLength - 9.5;
midBal2.y = -2.5;

AUVMasses = [ 
    front, mid, tail, ...
    m1, m2, ...
    escs, ...
    echoSound, ...
    balCup, noseBal1, noseBal2, noseBal3, midBal1, midBal2, ...
    b1, b2, b3, b4, b5, b6, b7, b8, ...
    %ap, rcvr, pwrBrd, pwrWires, balWires, ...
    %gedc, echoElec, ...
];