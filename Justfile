doit: convert activate

theme_dir := "~/.local/share/icons/MyCursor"

convert:
    xcursorgen xcom-cursor.cfg {{ theme_dir }}/cursors/left_ptr
    cd {{ theme_dir }}/cursors/ && ln -s left_ptr default && ln -s left_ptr arrow

activate:
    gsettings set org.gnome.desktop.interface cursor-theme 'MyCursor'
