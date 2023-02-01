export CC=icc
export CXX=icx
export NCDIR=/home/software/intel/netcdf-4.9.1-rc2
cmake \
      -DCMAKE_INSTALL_PREFIX=/home/software/intel/netcdf-fortran-4.8.0 \
    -DNETCDF_C_LIBRARY=/home/software/intel/netcdf-4.9.1-rc2/lib64/libnetcdf.so.19 \
    -DNETCDF_C_INCLUDE_DIR=/home/software/intel/netcdf-4.9.1-rc2/include \
      ..
