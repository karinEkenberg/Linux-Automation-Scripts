#!/bin/bash

echo "--- UTSKRIFT FÖRE RENSNING ---"
df -h / | grep /
echo ""
SIZE=$(du -sh ~/.local/share/Trash/files | cut -f1)

echo "Städar upp systemet..."
# Rensar gamla paketfiler som inte behövs
sudo apt-get autoremove -y
sudo apt-get autoclean -y

# Rensar gamla Flatpak-delar (om du hade sådana för Steam)
if command -v flatpak &> /dev/null; then
    flatpak uninstall --unused -y
fi

# Rensar temporära loggfiler (bra för säkerhet och plats)
sudo journalctl --vacuum-time=3d

echo ""
echo "--- UTSKRIFT EFTER RENSNING ---"
df -h / | grep /
echo ""
echo "Datorn är nu lite renare och grönare!"
echo "Du har precis frigjort $SIZE från papperskorgen."
