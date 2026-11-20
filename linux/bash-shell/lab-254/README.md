# Lab 254 Challenge

`lab-254-challenge.sh` creates the next batch of 25 empty files in `files/`, named `james<number>`. Each run picks up where the last one stopped: if `files/` already holds `james1` to `james150`, the next run creates `james151` to `james175`.

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

1. Counts the files in `files/` whose names match `james<number>` (`ls | grep -E | wc -l`)
2. Loops 25 times from that count + 1, running `touch` on each new file
3. Prints a confirmation line for every file it creates
