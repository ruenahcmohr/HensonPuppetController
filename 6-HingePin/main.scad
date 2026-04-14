
 outline = "main.dxf";

 
 L0 = 40.5;
 L1 = 90;
 L2 = 90;
 L3 = 11; 
 L4 = 500;
 

     linear_extrude(height=L0, convexity=5) {
       import(file=outline, layer="0", $fn=188);
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
