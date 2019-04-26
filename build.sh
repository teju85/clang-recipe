mkdir -p clang-build && \
cd clang-build && \
cmake -G "Unix Makefiles" \
    -DLLVM_TARGETS_TO_BUILD="X86;NVPTX" \
    -DCMAKE_BUILD_TYPE=Release \
    ../llvm && \
cmake -DCMAKE_INSTALL_PREFIX=$PREFIX -P cmake_install.cmake && \
make -j${CPU_COUNT} all && \
make install
