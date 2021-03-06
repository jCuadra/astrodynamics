function a = ephemerides_coefficients(planet)
%
% Input: 
%        planet (string representation of planet ie. 'Earth')
%
% Output:
%        a (ephemerides matrix)
%
% 
% Coefficients for Ephemerides Matrix Layout:
%
%              a0  a1  a2  a3
% L     (deg)
% a     (AU)
% e 
% i     (deg)
% Omega (deg)
% Pi    (deg)

switch planet
    case 'Venus'
a       = [  181.979801, 58517.8156760,   0.00000165,   -0.000000002;
             0.72332982,             0,            0,              0;
             0.00677188,  -0.000047766, 0.0000000975,  0.00000000044;
               3.394662,    -0.0008568,  -0.00003244,    0.000000010;
              76.679920,    -0.2780080,  -0.00014256,   -0.000000198;
             131.563707,     0.0048646,  -0.00138232,   -0.000005332  ];
     
    case 'Earth'
a       = [  100.466449, 35999.3728519,  -0.00000568,              0;
            1.000001018,             0,            0,              0;
             0.01670862,  -0.000042037, -.0000001236,  0.00000000004;
                      0,     0.0130546,  -0.00000931,   -0.000000034;
             174.873174,    -0.2410908,   0.00004067,   -0.000001327;
             102.937348,     0.3225557,   0.00015026,    0.000000478  ];
    case 'Mars'
a       = [  355.433275, 19140.2993313,	   0.00000261,   -0.000000003;
	        1.523679342,             0,             0,              0;			
	         0.09340062,   0.000090483, -0.0000000806, -0.00000000035;
               1.849726,	-0.0081479,	  -0.00002255,	 -0.000000027;
              49.558093,    -0.2949846,	  -0.00063993,	 -0.000002143;
             336.060234,	 0.4438898,	  -0.00017321,	  0.000000300 ];
       
     case 'Jupiter'
a       = [   34.351484,  3034.9056746,   -0.00008501,    0.000000004;
            5.202603191,  0.0000001913,             0,              0;		
             0.04849485,   0.000163244,	-0.0000004719, -0.00000000197;
               1.303270,    -0.0019872,	   0.00003318,	  0.000000092;
             100.464441,     0.1766828,	   0.00090387,	 -0.000007032;
              14.331309,	 0.2155525,	   0.00072252,	 -0.000004590 ];
       
     case 'Saturn'
a      = [    50.077471,  1222.1137943,	   0.00021004,	 -0.000000019;
            9.554909596, -0.0000021389,	            0,              0;	
             0.05550862,  -0.000346818,	-0.0000006456,	0.00000000338;
               2.488878,	 0.0025515,	  -0.00004903,    0.000000018;
	         113.665524,	-0.2566649,	  -0.00018345,	  0.000000357;
              93.056787,	 0.5665496,    0.00052809,	  0.000004882 ];
     
     case 'Pluto'
a      = [ 238.92903833,  145.20780515,         	0,          	0;  
            39.48211675,   -0.00031596,       	    0,	            0;
             0.24882730,	0.00005170,	            0,	            0;
	        17.14001206,	0.00004818,	            0,	            0;
	       110.30393684,   -0.01183482,	            0,	            0;
           224.06891629,   -0.04062942,         	0,          	0 ];
    otherwise
        disp('No such planet!');
        return     
end

return