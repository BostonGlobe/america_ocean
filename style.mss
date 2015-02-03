@name: '[name_en]';

// Fonts //
@sans: 'Myriad Pro Regular';
@sans_bold: 'Myriad Pro Bold';

// Color palette //
@road:  #fff;
//@land:  #eee;
//@land: rgb(239, 239, 239);
@land: white;
@land_mix: rgb(247, 247, 247);

@minortext: #666;
@minortexthalo: white;

@majortext: #555;
@majortexthalo: white;

@text: @majortext;
//@land: white;

@fill1: #fff;
@fill2: #bbb;
@fill3: #777;
@fill4: #000;


Map {
  background-color: white;
//  background-color: #4d004b;
  font-directory: url('fonts');
}

#gabriel_florit_8lwel8fr {
  raster-opacity: 1;
}

// Water Features //
#america_water {
  ::shadow {
    polygon-fill: mix(@land,@fill3,75);
    line-color: mix(@land,@fill3,75);
  }
  ::fill {
    // a fill and overlay comp-op lighten the polygon-
    // fill from ::shadow.
    polygon-fill: @land;
    comp-op: soft-light;
    // blurring reveals the polygon fill from ::shadow around
    // the edges of the water
    image-filters: agg-stack-blur(3,3);
  }
}

// Water color is calculated by sampling the resulting color from
// the soft-light comp-op in the #water layer style above. 
@water: #d1d1d1;

#merged {
  line-color: mix(@land,@fill3,75);
//  line-dasharray: 2, 2;
}