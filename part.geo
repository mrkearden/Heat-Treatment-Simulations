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
Point(9) = {-.1, -.1, 0, 1.0};
//+
Point(10) = {.3, -.1, 0, 1.0};
//+
Point(11) = {.2, -.1, 0, 1.0};
//+
Point(12) = {.2, -.1, 0, 1.0};
//+
Point(13) = {.2, .2, 0, 1.0};
//+
Point(14) = {-.1, .2, 0, 1.0};
//+
Line(9) = {9, 11};
//+
Line(10) = {11, 13};
//+
Line(11) = {13, 14};
//+
Line(12) = {14, 9};
//+
Curve Loop(1) = {12, 9, 10, 11};
//+
Curve Loop(2) = {7, -8, 1, 2, 3, 4, 5, 6};
//+
Plane Surface(1) = {1, 2};
//+
Plane Surface(2) = {2};
//+
Physical Surface("part", 13) = {2};
//+
Physical Surface("fluid", 14) = {1};
//+
Physical Curve("part-walls", 15) = {3, 2, 1, 8, 7, 6, 4, 5};
//+
Physical Curve("inlet", 16) = {12};
//+
Physical Curve("outlet", 17) = {10};
//+
Physical Curve("tank-walls", 18) = {11, 9};
//+
Transfinite Curve {7} = 14 Using Progression 1;
//+
Transfinite Curve {3} = 10 Using Progression 1;
//+
Transfinite Curve {8, 6} = 14 Using Progression 1;
//+
Transfinite Curve {12, 12, 9, 10, 11} = 30 Using Progression 1;
//+
Transfinite Curve {2, 4} = 10 Using Progression 1;
