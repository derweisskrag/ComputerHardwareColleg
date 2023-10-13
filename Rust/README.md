# Rust files
Here, I publish all my source code written in Rust!

## How to run code? 
You can go at https://play.rust-lang.org/?version=stable&mode=debug&edition=2021 
or you can create a Rust project.

## How to create a Rust project?

1. Install cargo: https://crates.io/
2. Open terminal or CMD:
3. Run `cargo new <Your project name>` as in `cargo new my-project`
4. Go to "src" directory and open up "main.rc' file: `cd my-project/src`
5. Compile or run your app: `cargo build`, and then `cargo run main.rs` or `rustc main.rs` to compile.
6. When the executable file is produced (on Linux: `ld -o file-name.o file-name` where file-name.o is compiled),
   meaning that you can `rustc main.rs -o main.o`. It is not recommended, as `cargo build` and `cargo run` is preferred.
7. Execute your file.
8. If you want to add libraries such as crates, you can explore `.toml` file (on terminal `cargo add <crate name>`). You
   can find crates here: [Rust crates](https://crates.io/). For example, `cargo add serde`.


## Code example
The code prints "Hello, world!" to the console.
```Rust
fn main(){
   let response: &str = "Hello, world!";
   println!("{}", response);
}
```
