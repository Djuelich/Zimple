#List rescources

param worktime := 150;
param material := 160;

#variables for products

var hemden integer >= 0;
var roecke integer >= 0;
var hosen  integer >= 0;
var maschine1 integer >= 1000;
var maschine2 integer >= 2000;

# objective function
maximize profit : (30* hemden - maschine1) + ((45* roecke) + (60* hosen) - maschine2);

#constraints
subto worktime : 3* hemden + 2* roecke + 1* hosen  <= worktime ;
subto material : 1.2* hemden + 0.6*roecke + 1.4*hosen <= material ;
