_default: activate

redo-it: convert activate

theme_dir := "~/.local/share/icons/MyCursor"

convert: prereq
    xcursorgen xcom-cursor.cfg {{ theme_dir }}/cursors/left_ptr
    cd {{ theme_dir }}/cursors/ && ln -sf left_ptr default && ln -sf left_ptr arrow

activate:
    gsettings set org.gnome.desktop.interface cursor-theme 'MyCursor'

prereq:
    which xcursorgen || sudo apt install x11-apps
