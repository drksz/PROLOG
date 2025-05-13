# Running Prolog on Windows Subsystem for Linux (WSL)

## Requirements
- Windows with **WSL** enabled
- Internet connection

## How to Install

1. **Open your WSL terminal (Ubuntu)**  

2. **Update your package manager**
   (run only if pkg manager is not up to date)
   sudo apt update 


3. **Install GNU Prolog**
   sudo apt install gprolog

4. **Verify Installation**
   gprolog

   You should see something like:

   GNU Prolog 1.x.x (64 bits)
   By Daniel Diaz
   ...
   | ?-
   ```

## Test a program in prolog

### 1. **Create a File**
In your terminal, run:
nano sunny.pl

Paste this short sample:

% My first program

sunny.

respond('is it sunny') :-
 ( sunny -> write('yes') ; write('no') ).


### 2. **Start GNU Prolog**

run this in your terminal:
gprolog

### 3. **Load Your Program**

| ?- consult('sunny.pl').


If successful, it will respond:
yes


### 4. **Test It**

| ?- respond('is it sunny').
yes


Try an unknown input:


| ?- respond('hello').
no



##  How to Exit the Interpreter

At any `| ?-` prompt, type:

halt.


Or simply press:

CTRL+D


## if you dont like WSL you can download SWI Prolog on Windows and follow its simple install procedures (make sure you check the box that allows it to set its own PATH variable so its easier).
