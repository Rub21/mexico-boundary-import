# mexico-boundary-import

This is an easy way to generate geojson adn mbtiles for relation which contain `boundary=administrative` and `admin_level=6`.


### Install requirement apps

```
./install.sh

```

### Generating geojson 

```
./buildgeojson.sh

```

*Output*

- mexico_boundaries_import.geojson 
- mexico_before_import.geojson


### Generating mbtiles 

```
./buildmbtiles.sh

```
Upload the mbtiles to https://www.mapbox.com/studio/tilesets/, and then generate the styles.


### Result

- [Mexico before boundary import](https://api.mapbox.com/styles/v1/ruben/cimp0k7px00ckahm7fijbzviv.html?title=true&access_token=pk.eyJ1IjoicnViZW4iLCJhIjoiYlBrdkpRWSJ9.JgDDxJkvDn3us36aGzR6vg#4.56/23.959/-98.276)

![image](https://cloud.githubusercontent.com/assets/1152236/14329301/6795a6fa-fc00-11e5-93c6-e2b274116a40.png)

- [Mexico after boundary import](https://api.mapbox.com/styles/v1/ruben/cimp0hdf3003vb8m7dszon345.html?title=true&access_token=pk.eyJ1IjoicnViZW4iLCJhIjoiYlBrdkpRWSJ9.JgDDxJkvDn3us36aGzR6vg#5.18/23.797/-99.708)

![image](https://cloud.githubusercontent.com/assets/1152236/14329271/4ff5f0fe-fc00-11e5-98ba-ee0b398971ab.png)