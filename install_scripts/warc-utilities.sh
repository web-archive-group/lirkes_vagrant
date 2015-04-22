###
# WARC utilities
###

## warctools

echo "Installing warctools."

SHARED_DIR=$1

if [ -f "$SHARED_DIR/config" ]; then
    . $SHARED_DIR/config
fi

mkdir $HOME_DIR/git

# Dependencies
apt-get install python-setuptools python-unittest2 -y --force-yes

# Clone and build warctools
cd $HOME_DIR/git
git clone https://github.com/internetarchive/warctools.git
cd warctools && ./setup.py build && sudo ./setup.py install

## archive-analysis
cd $HOME_DIR/git
git clone https://github.com/vinaygoel/archive-analysis.git

## webarchive-indexing
cd $HOME_DIR/git
git clone https://github.com/ikreymer/webarchive-indexing.git
cd webarchive-indexing
pip install -r requirements.txt

## JWAT-Tools
if  ! -f ["$DOWNLOAD_DIR/jwat-tools-0.5.6-SNAPSHOT.zip" ]; then
  echo -n "Downloading JWAT-Tools..."
  wget -q -O "$DOWNLOAD_DIR/jwat-tools-0.5.6-SNAPSHOT.zip" https://bitbucket.org/nclarkekb/jwat-tools/downloads/jwat-tools-0.5.6-SNAPSHOT.zip
  echo " done"
fi

cd /tmp
cp "$DOWNLOAD_DIR/jwat-tools-0.5.6-SNAPSHOT.zip" /tmp
unzip jwat-tools-0.5.6-SNAPSHOT.zip
cd jwat-tools-0.5.6-SNAPSHOT
mv env.sh jwattools_debug.sh jwattools.sh lib /usr/local/bin
