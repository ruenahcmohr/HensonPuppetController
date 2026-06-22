
 outline = "main.dxf";


 

 
 L60 = 60;
 L61 = 30;
 L62 = 130;
 L63 = 5;





module test() {
    
  /*   linear_extrude(height=0.4, convexity=5) {
       import(file=outline, layer="0", $fn=188);
     }*/
    linear_extrude(height=0.3, convexity=5) { // body
       import(file=outline, layer="60", $fn=188);
    } 
    
}


 
 module armRest() {
     difference() {
    linear_extrude(height=L60, convexity=5) { // body
       import(file=outline, layer="60", $fn=188);
    } 
       
    translate([0,L61-0.01,10+15+6])
    rotate([90,0,0])
    linear_extrude(height=L61, convexity=5) { // mounting holes
       import(file=outline, layer="61", $fn=188);
    }
    
    translate([-L62/2,0,10+15+6])
    rotate([0,90,0])
     linear_extrude(height=L62, convexity=5) { // strap hole
       import(file=outline, layer="62", $fn=188);
    }    

    translate([0,18.7,10+15+6])
    rotate([90,0,0])
    linear_extrude(height=L63, convexity=5) { // mounting holes
       import(file=outline, layer="63", $fn=188);
    }
}
 }
 
 
 
 

 
 

armRest();

 
 
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
