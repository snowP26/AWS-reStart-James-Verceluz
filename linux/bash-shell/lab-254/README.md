# Lab 254 Challenge

`lab-254-challenge.sh` asks for a name, then creates the next batch of 25 empty files in `files/`, named `<name><number>`. Each run picks up where the last one stopped for that name: if `files/` already holds `james1` to `james150`, entering `james` creates `james151` to `james175`.

## Run it

Run it from this folder, because the script uses the relative path `files/`:

```bash
cd linux/bash-shell/lab-254
```

Ensure that the bash script has the proper execute permission to run the script. use the command:
```bash
chmod +x lab-254-challenge.sh
```

Run the script with:
```bash
./lab-254-challenge.sh
```

## How it works

1. Asks for the name to use as the file prefix
2. Creates `files/` if it does not exist
3. Counts the files in `files/` whose names match `<name><number>` (`ls | grep -E | wc -l`)
4. Loops 25 times from that count + 1, running `touch` on each new file
5. Prints a green confirmation line for every file it creates

## Clearing the files

`clear-files.sh` empties a directory so you can test `lab-254-challenge.sh` again from the start. It deletes everything inside the directory but keeps the directory itself.

Give it execute permission and run it from this folder:

```bash
chmod +x clear-files.sh
./clear-files.sh
```

When it asks for a directory, enter `files`.

> **Warning:** the deletion is permanent and includes subfolders. Never enter `.` because that would delete the scripts in this folder too.

### How it works

1. Asks for the directory to clear and exits with an error if it does not exist
2. Asks for confirmation: `y` or `Y` continues, anything else aborts
3. Runs `rm -rf "$DIR"/*` to delete the contents (hidden files starting with `.` are not matched by `*` and stay)
4. Prints a success message and runs `ls -l` on the directory to show it is empty
