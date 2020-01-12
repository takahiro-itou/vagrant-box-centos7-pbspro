#! /bin/bash  -xue

echo  Provisioning $HOSTNAME

sudo  timedatectl  set-timezone Asia/Tokyo

sudo  yum  update -y
sudo  yum  groupinstall -y  "Base"  "Development Tools"

sudo  yum  install -y  git  emacs  vim                          \
    gcc  make  rpm-build  libtool  hwloc-devel                  \
    libX11-devel   libXt-devel  libedit-devel  libical-devel    \
    ncurses-devel  perl  postgresql-devel  postgresql-contrib   \
    python-devel   python3-devel  tcl-devel  tk-devel  swig     \
    expat-devel    openssl-devel  libXext    libXft             \
    autoconf  automake                                          \
    expat  libedit  postgresql-server  python  python3          \
    sendmail  sudo  tcl  tk  libical   time

# Install pbspro v18.1.4
git  clone  https://github.com/PBSPro/pbspro.git  -b v18.1.4
pushd  pbspro
./autogen.sh
./configure  --prefix=/opt/pbs/
make
sudo  make  install
popd

sudo  /opt/pbs/libexec/pbs_postinstall
sudo  chmod  4755  /opt/pbs/sbin/pbs_iff  /opt/pbs/sbin/pbs_rcp

# clean up
