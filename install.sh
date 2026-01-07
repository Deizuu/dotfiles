
# Path definition
backup_dir="$HOME/deizuuDotfilesBackup"
kitty_conf="$HOME/.config/kitty"
nvim_conf="$HOME/.config/nvim"
omz_conf="$HOME/.oh-my-zsh"
tmux_conf="$HOME/.tmux.conf"
zshrc_conf="$HOME/.zshrc"

# Create the backup directory if it doesn't exist
mkdir -p "${backup_dir}"

# Helper function for backing up configs
backup_item() {
	local src=$1 dest_name=$2
	if [[ -e "${src}" ]]; then
		local dest="${backup_dir}/${dest_name}"
		mkdir -p "$(dirname "${dest}")"
		mv -v "${src}" "${dest}"
	fi
}

# Backing up the previous configs
backup_item "$kitty_conf" "kittyBackup"
backup_item "$nvim_conf"  "nvimBackup"
backup_item "$omz_conf"   "omzBackup"
backup_item "$tmux_conf"  "tmuxBackup"
backup_item "$zshrc_conf" "zshrcBackup"

echo "Backed up previous configs in ${backup_dir}"

# Installing Oh-my-zsh
read -p "Do you want to install Oh-my-zsh? [y/N]: " omz_choice
omz_choice=${omz_choice:-n} # No by default

if [[ omz_choice == "y"]]; then
	sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi
