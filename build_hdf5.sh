export CC=icc
export CXX=icx
export FC=ifort
cmake \
    -DCMAKE_INSTALL_PREFIX=/home/software/intel/hdf5-1.14.0 \
    -DBUILD_SHARED_LIBS=ON \
    -DHDF5_ENABLE_Z_LIB_SUPPORT=ON \
    -DHDF5_ENABLE_PARALLEL=ON \
    -DHDF5_BUILD_PARALLEL_TOOLS=OFF \
    ..
