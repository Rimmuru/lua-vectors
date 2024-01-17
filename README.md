# Vector Library for Lua
This Lua library provides a simple and efficient way to work with 2D and 3D vectors. It includes basic vector operations like addition, subtraction, multiplication, division, and more advanced functions such as normalization, dot product calculation, and distance measurement.

## Installation

To use this library, simply [download](https://github.com/Rimmuru/lua-vectors/archive/refs/heads/main.zip) `vectorLib.lua` and include it in your Lua project.

```lua
local vectorLib = require("vectorLib")
```

## Usage

### Creating Vectors

You can create 2D and 3D vectors using `vec2_t.new(x, y)` and `vec3_t.new(x, y, z)` respectively.

```lua
local vec2 = vectorLib.vec2_t.new(1, 2)
local vec3 = vectorLib.vec3_t.new(1, 2, 3)
```

### Basic Operations

#### Addition

```lua
local result = vec2:add(vectorLib.vec2_t.new(3, 4))
-- result is now a vector with coordinates (4, 6)
```

#### Subtraction

```lua
local result = vec3:subtract(vectorLib.vec3_t.new(1, 1, 1))
-- result is now a vector with coordinates (0, 1, 2)
```

### Advanced Operations

#### Normalization

```lua
local normalizedVec = vec3:normalize()
-- normalizedVec is now the normalized form of vec3
```

#### Dot Product

```lua
local dotProd = vec2:dotProduct(vectorLib.vec2_t.new(3, 4))
-- dotProd is the dot product of vec2 and (3, 4)
```

#### Distance Calculation

```lua
local distance = vec2:getDistance(vectorLib.vec2_t.new(3, 4))
-- distance is the distance between vec2 and (3, 4)
```

## Contributing
- Contributions to this library are welcome! Feel free to fork the repository, make changes, and submit pull requests.

## Credits
- [MrReekoFTWxD](https://github.com/MrReekoFTWxD) for the original vector libary
