
 outline = "main.dxf";
 pot = "pot.dxf";

 
 L0 = 4;
 L1 = 15;
 L2 = 20;
 L3 = 20; 
 





difference() {    
     linear_extrude(height=L0, convexity=5) {
       import(file=outline, layer="0", $fn=188);
     }
 
    for (i = [0:360/8:360]) {
      rotate([0,0,i])   
      translate([36,0,0])
      rotate_extrude( convexity=5, $fn=248) {
       import(file=outline, layer="1", $fn=248);
     } 
 }

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
