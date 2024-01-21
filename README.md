# TRA.SH - A Bash Static Site Generator

### How?
To build the site, simply run `make`. This will run `scripts/build.sh` and will parse the `content` directory and build html files from the 
markdown contained within. The `content` directory should follow the below structure.

> [!WARNING]
> If you do not follow the directory structure shown below, your site will not be built correctly

```
content
|-- 2023
|   |-- 01
|   |-- 02
|   |-- 03
|   |-- 04
|   |-- 05
|   |   |-- complexity_is_killing_the_web.md
|   |-- 06
|   |-- 07
|   |-- 08
|   |-- 09
|   |-- 10
|   |-- 11
|   |-- 12
|-- 2024
|   |-- 01
|   |-- 02
|   |-- 03
|   |-- 04
...
```

### Why?
This project is a wholly unnecessary endeavour. That being said; it serves as a useful reminder that we have a tendency to 
add complexity to our systems unnecessarily.
