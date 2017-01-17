if [ -x /usr/bin/update-mime-database ]; then
/usr/bin/update-mime-database /usr/share/mime &> /dev/null
fi

if [ -x /usr/bin/update-desktop-database ]; then
/usr/bin/update-desktop-database &> /dev/null
fi

if [ -x /usr/bin/gtk-update-icon-cache ]; then
  /usr/bin/gtk-update-icon-cache  -f -q /usr/share/icons/hicolor &> /dev/null
fi

if [ ! -e var/games/xgalaga++/xgalaga++.scores ]; then
  mv var/games/xgalaga++/xgalaga++.scores.new var/games/xgalaga++/xgalaga++.scores
fi
rm -f var/games/xgalaga++/xgalaga++.scores.new

