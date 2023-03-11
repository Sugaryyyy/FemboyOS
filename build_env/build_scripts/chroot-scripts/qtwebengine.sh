cd /sources/
wget -nc $2
wget -nc $3
wget -nc $4
. /dist/build_env/build_scripts/inc-start.sh $1 $(basename $0) 

patch -Np1 -i ../qtwebengine-5.15.12-build_fixes-1.patch

patch -Np1 -i ../qtwebengine-5.15.12-ffmpeg5_fixes-1.patch

mkdir -pv .git src/3rdparty/chromium/.git

sed -e '/^MODULE_VERSION/s/5.*/5.15.8/' -i .qmake.conf

find -type f -name "*.pr[io]" |
  xargs sed -i -e 's|INCLUDEPATH += |&$$QTWEBENGINE_ROOT/include |'

sed -e '/link_pulseaudio/s/false/true/' \
    -i src/3rdparty/chromium/media/media_options.gni

sed -e 's/\^(?i)/(?i)^/' \
    -i src/3rdparty/chromium/tools/metrics/ukm/ukm_model.py &&
sed -e "s/'rU'/'r'/" \
    -i src/3rdparty/chromium/tools/grit/grit/util.py

sed -i 's/NINJAJOBS/NINJA_JOBS/' src/core/gn_run.pro

mkdir build &&
cd    build &&
qmake .. -- -system-ffmpeg -proprietary-codecs -webengine-icu &&
make -j$(nproc)

make install

export QT5PREFIX=/opt/qt5

find $QT5DIR/ -name \*.prl \
   -exec sed -i -e '/^QMAKE_PRL_BUILD_DIR/d' {} \;

. /dist/build_env/build_scripts/inc-end.sh $1 $(basename $0) 
