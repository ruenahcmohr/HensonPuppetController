
 outline = "main.dxf";

 
 L0 = 3;
 L1 = 4;
 L2 = 2.5;
 L3 = 20; 
 
L4 = 1;


    
     linear_extrude(height=L0, convexity=5) {
       import(file=outline, layer="0", $fn=188);
     }
     /*
     linear_extrude(height=L3, convexity=5) {    // diff for pot pocket.
       import(file=outline, layer="3", $fn=188);
     }  
     */
     translate([0,0,L0])
     linear_extrude(height=L1, convexity=5) {
       import(file=outline, layer="1", $fn=188);
     }
     
     translate([0,0,L0+L1])
     linear_extrude(height=L2, convexity=5) {
       import(file=outline, layer="2", $fn=188);
     }
 
 
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
