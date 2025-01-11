Execution steps:

1.
```
git clone https://github.com/ChrisKolan/installation-scripts.git
```
2.
```
cd installation-scripts
```
3.
```
chmod -R +x *
```
4.
```
./install.sh
```

5.
```
cd ~/bin
```
6.
```
./chezmoi init https://github.com/ChrisKolan/dotfiles.git
```
7.
```
./chezmoi apply -v
```
