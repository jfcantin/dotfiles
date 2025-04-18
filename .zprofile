# Set PATHS
if [ -x "/opt/homebrew/bin/brew" ]; then
    # For Apple Silicon Macs
    export PATH="/opt/homebrew/bin:$PATH"
fi

# add home bin to path for scripts
export PATH=$HOME/bin:$PATH
