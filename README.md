# lua-squish

Squish Lua libraries and apps into a single compact file.

## Getting started

Run the docker command within a directory with the `squishy` file.

```bash
docker run --rm -it -v $(pwd):/build -w /build lalex/lua-squish
```

### `squishy` file example
```lua
Main "src/main.lua"
Module "config" "src/config.lua"
Output "dist/release.lua"
```

## Documentation

Description of the command-line options and `squishy` file format 
can be found at http://code.matthewwild.co.uk/squish/file/tip/README

## Source code

Squish tool is originally created by Matthew Wild.

http://code.matthewwild.co.uk/squish

## License

The MIT License (MIT).
