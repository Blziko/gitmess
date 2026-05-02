# GitMess
A simple command-line tool to automate your git commit messages. <br>
No more overthinking your commit descriptions.

### Requirements
- git
- perl

### Installation
```bash
cd /opt
git clone https://github.com/Blziko/gitmess
chmod +x gitmess/gitmess.pl
ln -sf gitmess/gitmess.pl /usr/bin/gitmess
cd
```

### Usage
```bash
cd <repo>
git add .
git status | gitmess
```
