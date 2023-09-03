# ps-snapchat-memories

![PowerShell](https://img.shields.io/badge/PowerShell-%235391FE.svg?style=for-the-badge&logo=powershell&logoColor=white)
[![License](https://img.shields.io/github/license/loganator956/ps-snapchat-memories?style=for-the-badge)](https://github.com/loganator956/ps-snapchat-memories/blob/master/LICENSE)
[![GitHub release (with filter)](https://img.shields.io/github/v/release/loganator956/ps-snapchat-memories?style=for-the-badge)](https://github.com/loganator956/ps-snapchat-memories/releases/latest)

Downloads snapchat memories from `memories_history.json` and applies their dates.

Currently only applies dates to the file properties (`CreationTime` and `LastWriteTime`).

The script simply downloads the files into a `./memories` folder and reads from `./memories_history.json`

## Usage

```Powershell
iwr https://raw.githubusercontent.com/loganator956/ps-snapchat-memories/master/download.ps1 | iex
```
