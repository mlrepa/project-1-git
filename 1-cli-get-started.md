
# CLI - Get started


## 1. Show files and directories

```bash
# Show the current working directory 
pwd

# List the dir content 
ls

# Show the command `Help`  (quit with `q` + Enter)
man ls

# Show `hidden` files (whose names begin with a dot ‘.’)
ls -a 

# List files in the long format
ls -l 

# Combine options: list all files in the long format 
ls -la 

# Show content of the file
cat .hidden-file

```


## 2. Create files and directories

```bash
# Create a new `demo-cli` directory 
mkdir demo-cli

# Navigate to the `demo-cli` dir
cd demo-cli

# Create a file (and follow `2.1 Edit files with vim editor` instructions)
vim file.txt 
```

#### 2.1 Edit files with `vim` editor

```markdown

1. Create/Open file with `vim file.txt`

Press `i` to switch to insert mode and add the text: 
`This is the first line` 

2. Close the file without save: press [Esc]...

- type `:q` and press [Enter], you get an expected error:
`E37: No write since last change (add ! to override)` 
- type `:q!` and press [Enter], close the file without saving changes

3. Open file with `vim file.txt` again and add the text: 
`This is the first line` 

4. Save results and close the file: press [Esc], type `:wq`, press [Enter]
```



## 3. Copy, rename, move and delete files

```bash
# Navigate to the `demo-cli` dir
cd demo-cli

# Create a copy of the `file.txt` 
cp file.txt file2.txt

# Move the copy to the parent directory (us `..`)
mv file2.txt ..

# Navigate to the parent dir
cd .. 

# Remove `file2.txt` 
rm file2.txt

# Remove `demo-cli` dir
rm -rf demo-cli

```