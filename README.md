# GitMess
A simple command-line tool to automate your git commit messages.  
No more overthinking your commit descriptions.

### Requirements
- perl

### Installation
```bash
git clone https://github.com/Blziko/gitmess
chmod +x gitmess/gitmess.pl
sudo ln -sf $HOME/gitmess/gitmess.pl /usr/bin/gitmess
```

### Usage
```bash
cd YourProject
git add .
git status | gitmess
```
