# ps-snapchat-memories

Downloads snapchat memories from `memories_history.json` and applies their dates.

Currently only applies dates to the file properties (`CreationTime` and `LastWriteTime`).

The script simply downloads the files into a `./memories` folder and reads from `./memories_history.json`

The script is based on the assumption that `exiftool` is in your `PATH`

## Usage

```
iwr https://raw.githubusercontent.com/loganator956/ps-snapchat-memories/master/download.ps1 | iex
```
