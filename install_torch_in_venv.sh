# Pull the latest changes from the remote repository
git pull origin main

# Ensure the correct Python version is used and create a virtual environment
~/.pyenv/versions/3.10.12/bin/python -m venv venv

# Activate the virtual environment
source venv/bin/activate

# Verify the Python version
python --version

# Install PyTorch and related packages using CPU-compatible wheels
pip install torch torchvision torchaudio --index-url https://download.pytorch.org/whl/cpu                

# Install the project as an editable package
pip install -e .

pip install genesis-world

#install missing parts

brew install ffmpeg python-tk

source venv/bin/activate

pip install --upgrade pip

pip install --upgrade taichi pygel3d trimesh pyrender
export IMAGEIO_FFMPEG_EXE=$(which ffmpeg)
export TK_SILENCE_DEPRECATION=1

git submodule update --init --recursive

cd ./genesis/ext/LuisaRender/src/compute

pip install .

pip list | grep LuisaRenderPy

cd ../../../../../examples

python render_on_macos.py

