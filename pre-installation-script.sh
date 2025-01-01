clear
echo '###############################'
echo '#                             #'
echo "#    PreInstallationScript    #"
echo '#                             #'
echo '###############################'

echo 'System update and upgrade'
sudo apt update
sudo apt -y upgrade
echo '###############################'

echo 'Downloading required packages'
sudo apt -y install git
sudo apt -y install timeshift
sudo apt -y install xclip
echo '###############################'

echo 'Setting E-Mail address and name'
echo 'Enter E-Mail address'
read EMAIL
echo 'Enter user.name'
read NAME
echo '###############################'

echo 'Setting git global credentials:'
git config --global user.email "$EMAIL"
git config --global user.name "$NAME"
echo '###############################'

echo 'Creating SSH-Key'
ssh-keygen -t ed25519 -C "$EMAIL"
echo '###############################'

echo 'Copying SSH-Key to clipboard for GitHub'
xclip -sel clip < ~/.ssh/id_ed25519.pub
echo '###############################'

echo 'Add key to GitHub. Redirecting now.'
xdg-open https://github.com/settings/keys
