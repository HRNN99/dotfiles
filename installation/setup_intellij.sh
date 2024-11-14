echo "Installing snap"

sudo mv /etc/apt/preferences.d/nosnap.pref ~/Documents/nosnap.backup
sudo apt update
sudo apt install snapd

sudo snap install intellij-idea-community --classic
