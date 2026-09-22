# 🚀 Three Programming Paradigms: A Quick Guide

This guide explains the fundamental differences between **Procedural**, **Object-Oriented** (OOP), and **Functional** programming using a simple, real-world analogy: **making a cup of coffee** ☕.

---

## 🏎️ 1. Procedural Programming (How to do it)
Focuses on **step-by-step instructions and algorithms**. The program gives the computer a precise sequence of commands and mutates variable states in place.
* **Analogy (C, Pascal):** *“Take the beans. Put them in the grinder. Run the grinder for 10 seconds. Heat water to 90°C. Pour the water over the grounds.”*
* **Key Features:** Global state, loops (`for`, `while`), mutating variables in place (`temperature = 90`).

## 🧱 2. Object-Oriented Programming / OOP (Who does it)
Divides the program into independent **objects**. Each object encapsulates its own **data** (attributes) and **capabilities** (methods). Objects communicate with each other by sending messages.
* **Analogy (Java, C#):** We create a `Grinder` object, a `CoffeeMaker` object, and a `Person` object. The person tells the grinder: `grinder.grind(beans)`. The person then passes the result to the coffee maker: `coffeeMaker.brew(groundCoffee)`.
* **Key Features:** Classes, instances, data encapsulation (hiding data inside objects).

## 🧮 3. Functional Programming (What it is / Data Transformation)
Focuses on **mathematical functions and data flow**. There is no global state, no variable mutation, and no sequential time-based instructions. You simply compose small functions into larger ones, letting data flow through them like a pipe.
* **Analogy (Haskell):** A pure function `grind` takes beans and returns ground coffee (the original beans don't vanish; new data is produced). A function `brew` takes grounds and water and returns a beverage. We compose them: `brew (grind beans) water`.
* **Key Features:** Immutability (data cannot change), **recursion** instead of loops, pure functions with no side effects (same input always equals same output).

---

## 📊 Comparative Overview

| Feature | Procedural | Object-Oriented (OOP) | Functional |
| :--- | :--- | :--- | :--- |
| **Core Idea** | *“Do this, then do that.”* | *“Let this object handle it.”* | *“This is how data transforms.”* |
| **Building Block** | Procedures and functions | Objects and classes | Pure mathematical functions |
| **State / Mutability** | Variables are routinely overwritten | Object states change over time | Data is **immutable** (cannot change) |
| **Control Flow** | Loops (`for`, `while`), conditionals | Method calls on objects | **Recursion**, higher-order functions |

---

## 💡 Why is this different in Haskell?
Haskell is **strictly functional**. You cannot write a traditional `while (x < 10) x++` because `x` is immutable and cannot be modified. 
To repeat an action in Haskell, you must write a function that checks a condition and then **calls itself with the new (transformed) data via recursion** for the next step.
