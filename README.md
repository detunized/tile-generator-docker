OSM Tile Generator
==================

This is a Docker config to run the OSM raster tile generator in a container.
To run simply build the image and run like this:

```bash
docker build -t tilegen .
docker run --rm -it -v $(pwd):/data tilegen -- "12.26,51.849,14.699,52.994"
```

The last parameter is a bounding box in a CSV "west, south, east, north" format. It's easy to make here by selecting an area on the map on [OpenMapTiles][omp].

The tiles will be saved to the `./png` folder. If something goes wrong, there's also a log from the [TileServer GL][tsgl].

License
=======

MIT, see [LICENSE][lic]


[omp]: https://openmaptiles.com/extracts/#bounds=12.26,51.849,14.699,52.994
[tsgl]: klokantech/tileserver-gl
[lic]: LICENSE
