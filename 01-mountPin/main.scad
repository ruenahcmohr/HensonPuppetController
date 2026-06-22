
 outline = "main.dxf";

 
 L0 = 5;
 L1 = 24;
 L2 = 4; //washer slot
 L3 = 20; 
 L4 = 0.25;
 
 shimH = 5;
 
module shim5() {
 difference() {   
  linear_extrude(height=shimH, convexity=5) {
       import(file=outline, layer="5", $fn=188);
     }
     
   translate([0,0,-0.01])
     linear_extrude(height=shimH+1, convexity=5) {
       import(file=outline, layer="1", $fn=188);
     }
 
     
 }
     
}

//rotate([180,0,0]) // print upside down.
module post() {
translate([0,0,0]) {
 difference() {
     rotate_extrude( convexity=5, $fn=248) {
       import(file=outline, layer="0", $fn=190);
     } 
     
     translate([0,0,-0.01])
     linear_extrude(height=L1, convexity=5) {
       import(file=outline, layer="1", $fn=188);
     }
 
 translate([0,0,24-0.01-4])
     linear_extrude(height=L2, convexity=5) { // slot for washer
       import(file=outline, layer="2", $fn=188);
     }
    
 
 translate([0,0,73-L3+0.01])
 linear_extrude(height=L3, convexity=5) {
       import(file=outline, layer="3", $fn=188);
     }
     
 }
 
 //supports
 translate([0,0,66.05+0.25-4])  /// support for bolt pocket
  linear_extrude(height=L4, convexity=5) {
       import(file=outline, layer="4", $fn=188);
     }
 
     
  translate([0,0,24-0.02-0.25-4])  //support for washer slot
  linear_extrude(height=L4, convexity=5) {
    import(file=outline, layer="4", $fn=188);
  }
     
     
 }
 }
 
 //post();
 shim5();
 
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
