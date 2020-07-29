@address-color: #666;
@standard-halo-radius: 1;

#interpolation {
  [zoom >= 17] {
    line-color: @address-color;
    line-width: 1;
    line-dasharray: 2,4;
  }
}

#addresses {
  [zoom >= 17] {
    text-name: "[addr_housename]";
    ["addr_housenumber" != null] {
      text-name: [addr_housenumber];
      ["addr_housename" != null] {
        text-name: [addr_housenumber] + "\n" + [addr_housename];
      }
    }
    text-placement: interior;
    text-min-distance: 1;
    text-face-name: @sans;
    text-fill: @address-color;
    text-halo-radius: @standard-halo-radius;
    text-halo-fill: @country_halo;
    text-size: 11;
    text-wrap-width: 20; // 2.0 em
    text-line-spacing: -1.5; // -0.15 em
    [zoom >= 18] {
        text-size: 12;
        text-wrap-width: 22; // 2.0 em
        text-line-spacing: -1.65; // -0.15 em
    }
  }
}

/* Building names (rendered differently from addresses because they are
no official postal addresses) */

#building-text {
  [zoom >= 14][way_pixels > 3000],
  [zoom >= 17] {
    text-name: "[name]";
    text-placement: interior;
    text-face-name: @sans;
    text-fill: #444;
    text-halo-radius: @standard-halo-radius;
    text-halo-fill: @country_halo;
    text-size: 11;
    text-wrap-width: 22; // 2.0 em
    text-line-spacing: -1.65; // -0.15 em
  }
}

/*
#addresses {
  marker-width:6;
  marker-fill:#f45;
  marker-line-color:#813;
  marker-allow-overlap:true;
  marker-ignore-placement:true;
}
*/
