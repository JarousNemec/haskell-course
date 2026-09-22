# 🛠️ Learning Haskell Development

A lightweight workspace blueprint for learning and experimenting with Functional Programming in Haskell using **VS Code** and **GHCi**.

---

## ⚙️ Setup Guide

Follow these quick steps to get your local Haskell development environment running on Windows.

### 1. Install Haskell Toolchain
Open your PowerShell or Command Prompt as **Administrator** and run the following command using Chocolatey:
```bash
choco install haskell-dev
```
*This installs GHC (Glasgow Haskell Compiler) and GHCi (the interactive REPL).*

### 2. VS Code Extension
To get syntax highlighting, error checking, and code completions, install the following extension inside VS Code:
* **Simple GHC (Haskell)** by *Dany S.* (or any preferred basic Haskell extension)

---

## 🎮 Working with the Interactive REPL (GHCi)

Functional programming relies heavily on testing your code instantly. The fastest way to run your Haskell files is through **GHCi** via your integrated terminal.

### 1. Launching GHCi
Open your terminal inside VS Code and simply type:
```bash
ghci
```

### 2. Loading a File
Once inside GHCi, you can load any `.hs` file using the `:l` (load) command followed by the file path:
```haskell
ghci> :l path/to/YourFile.hs
```
*Tip: If you are already inside the folder where the file is located, just run `:l YourFile.hs`.*

### 3. Running function
When you have opened ghci and module loaded, just type the name of the function, you want to run, and press ENTER
```bash
ghci> main
```

### 4. Reloading After Changes
Every time you make a change in your code and save the file, you do not need to restart GHCi. Simply type:
```haskell
ghci> :r
```
*This reloads the current active file instantly with your latest updates.*

### 5. Leaving GHCi
When you want to close the interactive environment and go back to your standard terminal, type:
```haskell
ghci> :q
```

---

## 📌 Useful GHCi Commands Reference

| Command | Action | Description |
| :--- | :--- | :--- |
| `:l <filename>` | **Load** | Loads and compiles a specific `.hs` file into the REPL. |
| `:r` | **Reload** | Reloads all currently loaded files after code changes. |
| `:t <expression>` | **Type** | Shows the type signature of a function or variable. |
| `:q` | **Quit** | Exits the GHCi session. |
