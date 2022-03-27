# Zero2Production

Project to learn Rust from the book https://www.zero2prod.com/

This is a work in progress so don't expect _100% accurate_ notes/instructions.

## If you want to take a peek at my rough/draft notes
https://alejandro.dev/notes/Zero+to+Production+in+Rust

## How to run the project
We're using `cargo-watch` to watch changes and run multiple instructions in chain.

```shell
# run `cargo watch` 
# if OK, then run `cargo test`
# if OK, then run `cargo run`
# We can keep chaining more commands if we need to
cargo watch -x check -x test -x run
```