# Setup for Github
cp -r ./ssh-keys ~/.ssh
git config --global user.email "chuuhtetnaing@gmail.com"
git config --global user.name "Chuu Htet Naing"

# Update Repo and Install Required Libraries
apt update && apt install aria2 -y

# Uninstall Outdated Python Libraries
pip3 uninstall torch torchvision torchaudio transformers -y

# Install Required Python Libraries
pip3 install torch torchvision torchaudio --index-url https://download.pytorch.org/whl/cu118
pip3 install transformers timm