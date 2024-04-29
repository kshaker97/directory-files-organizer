<h1 align="center">
  Directory Files Organizer
</h1>

<h4 align="center">A Bash script to organize files of a certain directory it's path is passed to the script as an argument.</h4>

## Table of Contents:
- [Introduction](#introduction)
- [Explanation](#explanation)
- [Usage](#usage)
- [Example](#usage)
## Introduction:
This document presents a Bash script designed to organize files within a specified directory. The script accepts a directory path relative to its location as an argument and organizes the files within that directory based on their file types.
## Explanation:
The script accepts a relative directory path as an argument and organizes the files within that directory based on their file extensions. It creates directories for each file extension encountered and moves the corresponding files into these directories. Additionally, files without extensions or with unknown extensions are moved to a separate "misc" directory.
## Usage:
1. **Making Script User Executable:**
```
chmod u+x directory-files-organizer.sh
```
2. **Running the Script:**
```
./directory-files-organizer.sh <directory_path>
```
## Example:
1. **Organizing the Files of the Current Directory ( . ):**
```
./directory-files-organizer.sh  .
```
