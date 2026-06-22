
 outline = "main.dxf";
 pot = "pot.dxf";

 
 L0 = 72+8-4;
 L1 = 4;
 L2 = 2;
 L3 = 11; 
 
 L4 = 500;
 L5 = 0.25;
 
 /*
 import(file="../mountPin/mountingPin-r1-s.stl" );
 
 color([0,0,1,0.5])
translate([0,0,73])
import(file="../thrustPlate/thrustPlate-r2-s.stl" );
*/

translate([0,0,5])
difference() {
union() { // body stack
     linear_extrude(height=L0, convexity=5) {
       import(file=outline, layer="0", $fn=188);
     }
 
      translate([0,0,L0])
     linear_extrude(height=L1, convexity=5) {
       import(file=outline, layer="1", $fn=188);
     }
     
      translate([0,0,L0+L1])
     linear_extrude(height=L2, convexity=5) {
       import(file=outline, layer="2", $fn=188);
     }
    
        
     translate([0,0,L0+L1+L2])
    linear_extrude(height=L3, convexity=5) {
       import(file=outline, layer="3", $fn=188);
     }   
 }

  translate([-50,33-5,0]) // parallels mounting holes
  rotate([90,0,90])   
     linear_extrude(height=L4, convexity=5) {
       import(file=outline, layer="4", $fn=188);
     }

   translate([-6,30,89]) // wire exit hole
  rotate([90,0,0])   
 cylinder(h = 40, d=5, $fn=100, center=true);
     
 
/*
translate([0,0,-0.04])
   color([1,0,0])
   cube(200);
 
*/

 }
 
    translate([0,0,L0+L1+L2+5])
    linear_extrude(height=L5, convexity=5) {
       import(file=outline, layer="5", $fn=188);
    }
 
/*
  // finder
     color([1,0,0])
     translate([30, 35.5+4.5, 5+18.5+60+14.5])
     rotate([0,90,0])
     cylinder(h = 40, d=3, $fn=100, center=true);
  */


 
/*
      rotate_extrude( convexity=5, $fn=248) {
       import(file=outline, layer="10", $fn=248);
     } 


     //2x dovetail
     translate([0,0,0])
     rotate([0,0,0])    
     linear_extrude(height=L20, convexity=5) {
       import(file=outline, layer="20", $fn=188);
     }
 } // end of the union
 
     
     // 3x bolt
     color([1,0,0])
 


     translate([10, -0, 25/2])
     rotate([0,90,0])
     cylinder(h = 40, r =2.0, $fn=100, center=true);

}
*/
