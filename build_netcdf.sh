export CC=icc
export CXX=icx
cmake \
      -DCMAKE_INSTALL_PREFIX=/home/software/intel/netcdf-4.9.1-rc2 \
    -DHDF5_ROOT=/home/software/intel/hdf5-1.14.0/ \
      -DENABLE_DAP=ON \
      -DENABLE_DAP_REMOTE_TESTS=OFF \
      -DENABLE_HDF4=OFF \
      -DENABLE_NETCDF_4=ON \
      -DBUILD_SHARED_LIBS=ON \
      -DENABLE_TESTS=ON \
      -DBUILD_UTILITIES=ON \
      -DENABLE_DOXYGEN=OFF \
      -DENABLE_CDF5=ON \
      -DENABLE_PNETCDF=OFF \
      -DENABLE_PARALLEL4=ON \
      -DENABLE_PARALLEL_TESTS=ON \
      -DENABLE_NCZARR=on \
      -DENABLE_NCZARR_S3=off \
      -DENABLE_NCZARR_S3_TESTS=off \
      ..