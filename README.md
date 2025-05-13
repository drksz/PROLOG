# Running Prolog on Windows Subsystem for Linux (WSL)

## 📋 Requirements
- Windows with **WSL** enabled (Ubuntu recommended)
- Internet connection

## 🛠️ Installation Steps

1. **Open your WSL terminal (Ubuntu)**  
   You can search **"Ubuntu"** in your Windows Start Menu and open it.

2. **Update your package manager**
   ```bash
   sudo apt update
   ```

3. **Install GNU Prolog**
   ```bash
   sudo apt install gprolog
   ```

4. **Verify Installation**
   ```bash
   gprolog
   ```
   You should see something like:
   ```
   GNU Prolog 1.x.x (64 bits)
   By Daniel Diaz
   ...
   | ?-
   ```

---

## 🧪 Running Your First Prolog Program

### 1. **Create a File**
In your terminal, run:
```bash
nano sunny.pl
```

Paste this short sample:

```prolog
% File: sunny.pl

sunny.

respond('is it sunny') :-
    ( sunny -> write('yes'), nl ; write('no'), nl ).
```

Save and exit:
- Press `CTRL+O` then `Enter` to save.
- Press `CTRL+X` to exit.

---

### 2. **Start GNU Prolog**
```bash
gprolog
```

### 3. **Load Your Program**
```prolog
| ?- consult('sunny.pl').
```
If successful, it will respond:
```
yes
```

---

### 4. **Test It**
```prolog
| ?- respond('is it sunny').
yes
```
Try an unknown input:
```prolog
| ?- respond('hello').
no
```

---

## 🚪 How to Exit the Interpreter

At any `| ?-` prompt, type:
```prolog
halt.
```
Or simply press:
```
CTRL+D
```

---

## if you dont like WSL you can download SWI Prolog on Windows and follow its simple install procedures (make sure you check the box that allows it to set its own PATH variable so its easier).
