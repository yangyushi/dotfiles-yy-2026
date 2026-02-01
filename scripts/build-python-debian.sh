# ====================================================================
# Build a custome Python from source and install into a custom $PREFIX
# (It only works on Debian & Ubuntu with `apt` as package manager)
#
# You have to download and extract the source code to $DIR_PY_SRC
# ====================================================================

PREFIX=$HOME/.local
DIR_PY_SRC=Python-3.14.2
DIR_BUILD=Build-${DIR_PY_SRC}

sudo apt install -y \
    libssl-dev zlib1g-dev libncurses5-dev \
    libncursesw5-dev libreadline-dev libsqlite3-dev libgdbm-dev \
    libdb5.3-dev libbz2-dev libexpat1-dev liblzma-dev libffi-dev \
    libmpdec4 libmpdec-dev

mkdir -p $DIR_BUILD
cd ${DIR_BUILD}
../${DIR_PY_SRC}/configure --prefix=$PREFIX --enable-optimizations
make -j 8
make install

# Note: You can choose to remove the build directory afterwards
