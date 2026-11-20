# AWS re/Start - James Verceluz

This is my practice log for the AWS re/Start program (Batch 33).

The official labs run on EC2 instances inside the LMS. Everything in this repo is me redoing those labs and exercises on my own device, in the macOS Terminal, without the lab EC2 instances, so I can practice at my own pace outside lab time.

## My local setup

- **Machine:** Mac (Apple Silicon), macOS 15
- **Terminal:** macOS Terminal, default shell zsh
- **Scripts:** run with the built-in `/bin/bash` (bash 3.2)
- **Editors:** vim and nano
- **Version control:** git + GitHub

Heads-up: macOS ships the BSD versions of core commands (`ls`, `sed`, `find`, ...), so a few flags behave differently from the Amazon Linux instances in the LMS labs.

## What's inside

| Folder | What I practiced |
|--------|------------------|
| [`AWS-fundamentals/s3/`](AWS-fundamentals/s3/) | Amazon S3 objects and versioning |
| [`linux/bash-shell/`](linux/bash-shell/) | Bash scripting basics |
| [`linux/bash-shell/lab-254/`](linux/bash-shell/lab-254/) | Lab 254 challenge: creating files in batches with a loop |
| [`linux/vim-practice/`](linux/vim-practice/) | Editing files in vim |
| [`linux/vim-cheatsheet.jpg`](linux/vim-cheatsheet.jpg) | Vim command cheatsheet I keep handy |

Each folder has its own short README.

## What I learned

- **Bash:** variables, built-in environment variables like `$USER`, C-style `for` loops, and chaining commands with pipes (`ls | grep -E ... | wc -l`)
- **Linux files:** creating empty files with `touch` and filtering names with regular expressions
- **Vim:** switching between normal and insert mode, then saving and quitting
- **Amazon S3:** uploading objects and keeping multiple versions of the same file

## About me

I'm James Gabriel Verceluz, an AWS re/Start Batch 33 participant learning cloud computing, Linux, and scripting one lab at a time.

- GitHub: [@snowP26](https://github.com/snowP26)
