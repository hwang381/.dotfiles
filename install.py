import os

if 'HOME' not in os.environ:
    print("Ooops no HOME?")
    os.exit(1)
home = os.environ['HOME']

if not os.environ.get('SHELL', '').endswith('zsh'):
    print("Ooops not using zsh")
    os.exit(1)

if __name__ == "__main__":
    for fn in ["zshrc", "vimrc", "ideavimrc", "yabairc", "skhdrc"]:
        src = os.path.join(os.getcwd(), fn)
        dst = os.path.join(home, "." + fn) 
        if os.path.exists(dst) and not os.path.islink(dst):
            print("Destination " + dst + " is an existing regular file! Skipping...")
        print("Symlinking from " + src + " to " + dst)
        if os.path.exists(dst):
            os.unlink(dst)
        os.symlink(src, dst) 

