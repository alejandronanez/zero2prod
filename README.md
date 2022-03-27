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

### Notes
- `tokio` is what enables Asynchronous programming in Rust. It's not the only alternative though.
- We can inspect what a macro is doing if we use `cargo expand`. The _thing_ with that command is that it will only run in the Nightly version of the Rust compiler. To install a Nightly version, we need to do:

```shell
rustup toolchain install nightly --allow-downgrade
```

then, we can install `cargo expand` by doing

```shell
cargo install cargo-expand
```

And the we can call it with the `nightly` build by doing

```shell
cargo +nightly expand
```
