# Reference

- https://zig.guide/language-basics/assignment
- https://gencmurat.com/en/posts/zig-strings/

# zig pacakge registry found at  
    https://zigistry.dev/, Similar to crates.io
# package manager for dependencies is 
    build.zig.zon file, Similar to Cargo.toml

# Steps

- zig run my_file.zig (Terminal be in the same directory as zig file)
- zig run my_test.zig 

# proper Setup
    - Create a new project folder --> myProject
    - open terminal in myProject
    - execute command --> zig init
    - Following will be the folder structure
        -- src
            --main.zig
            -- root.zig
        -- build.zig
    - now execute --> zig build run
        This complies the code in main and runs it.
        Alternately seperted comman can be executed
        --> zig build
        --> zig run

//TODO
# Referencing other files in src folder in main.zig
    - simply use import
# calling functions of libraries and packages in main.zig
    - TODO: refer https://github.com/prime31/zig-gamekit/blob/main/build.zig
# Use Mach game engine package and make example renderings.