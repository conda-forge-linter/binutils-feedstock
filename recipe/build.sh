mkdir build
cd build

../configure --prefix="$PREFIX" --enable-gold
make -j${CPU_COUNT}
make install-strip
ln -s "$PREFIX/bin/ld.gold" "$PREFIX/bin/gold"
