//+
Point(1) = {0, 0, 0, 1.0};
//+
Point(2) = {0, .1, 0, 1.0};
//+
Point(3) = {.1, .1, 0, 1.0};
//+
Point(4) = {.1, 0, 0, 1.0};
//+
Point(5) = {.08, 0, 0, 1.0};
//+
Point(6) = {.02, 0, 0, 1.0};
//+
Point(7) = {.02, .08, 0, 1.0};
//+
Point(8) = {.08, .08, 0, 1.0};
//+
Line(1) = {1, 6};
//+
Line(2) = {6, 7};
//+
Line(3) = {7, 8};
//+
Line(4) = {8, 5};
//+
Line(5) = {5, 4};
//+
Line(6) = {4, 3};
//+
Line(7) = {3, 2};
//+
Line(8) = {1, 2};
//+

//+
Curve Loop(1) = {1, 2, 3, 4, 5, 6, 7, -8};
//+
Plane Surface(1) = {1};
//+
Physical Surface("part", 9) = {1};
//+
Physical Curve("part", 10) = {8, 1, 2, 3, 4, 5, 6, 7};
//+
Transfinite Curve {1, 5} = 8 Using Progression 1;
//+
Transfinite Curve {2, 4} = 16 Using Progression 1;
//+
Transfinite Curve {8, 6, 7} = 24 Using Progression 1;
//+
Transfinite Curve {3} = 16 Using Progression 1;
