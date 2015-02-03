#sOGRGeoJSON {
  text-name: '[snowfall]';
  text-face-name: @sans;
  text-fill: @majortext;
  text-size: 18;
  text-halo-fill: @majortexthalo;
  text-halo-radius: 1.5;
  text-wrap-width: 50;
  text-min-distance: 20;
}


// Country labels //

// State labels //
#sstate_label { 
  text-name: @name;
  text-face-name: @sans;
  text-fill: @minortext;
  text-size: 12;
  text-halo-fill: @minortexthalo;
  text-halo-radius: 1;
  text-wrap-width: 50;
}


#place_label[zoom=5][scalerank<=1],
#place_label[zoom=6][scalerank<=2],
#place_label[zoom=7][scalerank<=4],
#place_label[zoom=8][scalerank<=6],
#place_label[type='citys'][localrank=2][zoom>=5][zoom<10],
#place_label[type='citys'][localrank=3][zoom>=7][zoom<10],
#place_label[type='citys'][localrank>=4][localrank>9][zoom>=8][zoom<10],
#place_label[type='towns'][localrank<=1][zoom>=9][zoom<10] {
//  shield-name: [name_en] + ', ' + [localrank] + ', ' + [scalerank];
  shield-name: [name_en];
  shield-face-name: @sans;
  shield-size: 15;
  shield-fill: @text;
  shield-halo-fill: @land_mix;
  shield-halo-radius: 1.5;
  shield-unlock-image: true;
  shield-file: url("dot.svg");
  shield-wrap-width: 80;
  shield-line-spacing: -2;
  
  

  // Fine-tune label positioning.
  [ldir='E'] { shield-text-dx: 8; }
  [ldir='W'] { shield-text-dx: -8; }
  [ldir='N'] { shield-text-dy: -7; }
  [ldir='S'] { shield-text-dy: 8; }
  [ldir='NE'] { shield-text-dx: 8; shield-text-dy: -2; }
  [ldir='SE'] { shield-text-dx: 6; shield-text-dy: 6; }
  [ldir='SW'] { shield-text-dx: -7; shield-text-dy: 4; }
  [ldir='NW'] { shield-text-dx: -7; shield-text-dy: -4; }

//  [zoom>=6] { shield-size: 14; }

  // Emphasize major cities.
//  [scalerank<=6] { shield-size: 14; }
//  [zoom>=6][scalerank<=6] { shield-size: 16; } 
}
/*


// Display capital cities alongside stars.

// Display low zoom cities alongside points.

// Gradually replace shields with regular text labels.
#place_label[type='city'][localrank=1][zoom>=9],
#place_label[type='city'][zoom>=10] {
  text-name: @name;
  text-face-name: @sans;
  text-size: 16;
  text-fill: @text;
  text-halo-fill: @land;
  text-halo-radius: 1;
  text-min-distance: 4;
  text-wrap-width: 80;
  [scalerank<=3] { 
    text-fill: @text;
    text-size: 20;
  } 
}

// Mid priority place labels //
#place_label[type='town'][localrank<=2][zoom>=10],
#place_label[type='village'][localrank<=2][zoom>=12],
#place_label[type='hamlet'][localrank<=2][zoom>=13],
#place_label[type='town'][zoom>=14],
#place_label[type='village'][zoom>=14],
#place_label[type='hamlet'][zoom>=14] { 
  text-name: @name;
  text-face-name: @sans;
  text-size: 14;
  text-fill: @text;
  text-halo-fill: @land;
  text-halo-radius: 2;
  text-min-distance: 4;
  text-wrap-width: 80;
  [zoom>=12] { 
    text-size: 16;
    text-fill: @text;
  }
}

// Low priority place labels //
#place_label[type='suburb'][localrank<=2][zoom>=12],
#place_label[type='neighbourhood'][localrank<=2][zoom>=13],
#place_label[type='suburb'][zoom>=14],
#place_label[type='neighbourhood'][zoom>=15] { 
  text-name: @name;
  text-face-name: @sans;
  text-size: 14;
  text-fill: @text;
  text-halo-fill: @land;
  text-halo-radius: 2;
  text-min-distance: 4;
  text-wrap-width: 60;
}

// Road labels
#road_label[len>2000][zoom>=12],
#road_label[len>1000][zoom>=15] { 
  text-placement: line;
  text-transform: uppercase;
  text-face-name: @sans;
  text-name: @name;
  text-size: 9;
  text-min-distance: 100;
  text-halo-fill: @land;
  text-halo-radius: 1;
  text-fill: @text;
  [zoom>=17] { text-size: 11;}
}

// Water labels
#marine_label { 
  text-name: @name;
  text-face-name: @sans_bold;
  text-fill: @text;
  text-size: 12;
  text-halo-fill: @water;
  text-halo-radius: 1;
  text-wrap-before: true;
  text-wrap-width: 90;
  [labelrank=1] {
   text-size: 18;
  }
}

#water_label {
  [zoom<=13],
  [zoom>=14][area>500000],
  [zoom>=16][area>10000],
  [zoom>=17] {
    text-name: @name;
    text-face-name: @sans_bold;
    text-fill: @text;
    text-size: 12;
    text-halo-fill: @water;
    text-halo-radius: 1;
    text-wrap-width: 60;
    text-wrap-before: true;
    text-avoid-edges: true;
  }
}

#waterway_label[type='river'][zoom>=13],
#waterway_label[type='canal'][zoom>=14],
#waterway_label[type='stream'][zoom>=15] { 
  text-name: @name;
  text-face-name: @sans_bold;
  text-fill: @text;
  text-min-distance: 60;
  text-size: 10;
  text-halo-fill: @water;
  text-halo-radius: 1;
  text-wrap-before: true;
  text-avoid-edges: true;
  text-placement: line;
}

// Place labels
#poi_label[maki='park'][scalerank<=2],
#poi_label[maki='airport'][scalerank<=2],
#poi_label[maki='airfield'][scalerank<=2],
#poi_label[maki='rail'][scalerank<=2],
#poi_label[maki='school'][scalerank<=2],
#poi_label[scalerank='hospital'][scalerank<=2] { 
  text-face-name: @sans_bold;
  text-allow-overlap: false;
  text-name: @name;
  text-size: 9;
  text-line-spacing: -2;
  text-min-distance: 50;
  text-wrap-width: 60;
  text-halo-fill: @land;
  text-halo-radius: 1;
  text-fill: @text;
}
*/