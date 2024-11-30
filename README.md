# Prayer Times

A repository to host prayer times; prayer times are generated on merge to master.

## Requirements

These data rely on [Prayer times index generator](https://github.com/ibad-al-rahman/prayer-time-index-generator) to generate index files,
and the tool is written in Rust. The requirements are:

- `Rust`
- `ptig` (after installing rust run `cargo install --git https://github.com/ibad-al-rahman/prayer-time-index-generator`)

## Supporting a new year

- Create a directory with the year number, inside of it should contain a `.csv` file per month. Check year `2024`.
- Making it deployable requires adding the year to the `deploy.sh` file.

Example:

```diff
-years=(2024)
+years=(2024 2025)
```
