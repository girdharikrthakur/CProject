
---

# 🛠️ C Project Template with Makefile

This is a simple and clean **C project structure** using **Makefile** for building and running programs.

It helps you:

* Compile C files easily
* Keep build files separated
* Avoid typing long `gcc` commands
* Build projects like real software engineers

---

## 📁 Project Structure

```
PROJECT/
│
├── build/          # All compiled object files (.o)
├── include/        # Header files (.h)
├── src/            # Source files (.c)
│   └── main.c
│
├── app.exe         # Final executable (created by Make)
├── Makefile
└── README.md
```

---

## 🧩 Requirements

You must have:

* **GCC compiler**
* **Make**

### Check if installed:

```bash
gcc --version
make --version
```

If not installed (Windows MSYS2):

```bash
pacman -S gcc make
```

---

## 🔨 How to Build the Project

Open terminal inside the project folder and run:

```bash
make
```

This will:

1. Compile `.c` files from `src/`
2. Create `.o` files inside `build/`
3. Link everything
4. Create `app.exe`

---

## ▶ How to Run the Program

After build, run:

```bash
./app.exe
```

(or)

```bash
app.exe
```

---

## 🔁 Rebuild (Clean + Build)

To remove old build files and rebuild:

```bash
make clean
make
```

---

## 🧹 Clean Build Files

To delete object files and executable:

```bash
make clean
```

---

## ✏️ Adding New C Files

1. Add new file inside `src/`

   ```
   src/math.c
   ```

2. Add header inside `include/`

   ```
   include/math.h
   ```

3. Include it in `main.c`

   ```c
   #include "math.h"
   ```

4. Run:

   ```bash
   make
   ```

Makefile will automatically compile all `.c` files.

---

## 💡 Why Use Make?

Without Make:

```bash
gcc src/main.c src/math.c -o app.exe
```

With Make:

```bash
make
```

Make automatically:

* Tracks file changes
* Recompiles only modified files
* Speeds up large projects

---

