# Shell-Scripts
This is a place where I can store my commonly used shell scripts and or configuration files.

# Cloning
Clone this repo into the root directory. Make sure the .sh files have execute perms.

Add the contents of the ADDTORC file to the rc file of the shell you are using.


# Importing a bash config
```
if [ -f "$HOME/.bash_aliases" ]; then
   source "$HOME/.bash_aliases"
fi
```
