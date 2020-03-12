mkdir -p clang-build && \
    cd clang-build && \
    cmake -G "Unix Makefiles" \
        -DLLVM_TARGETS_TO_BUILD="X86;NVPTX" \
        -DCMAKE_BUILD_TYPE=Release \
        ../llvm && \
    make -j${CPU_COUNT} && \
    mkdir -p $PREFIX/bin $PREFIX/lib $PREFIX/include && \
    cp bin/clang-format $PREFIX/bin/clang-format && \
    cp bin/clang-tidy $PREFIX/bin/clang-tidy && \
    cp lib/libclang.so $PREFIX/lib/libclang.so && \
    cp -r ../llvm/tools/clang/lib/Headers $PREFIX/include/ClangHeaders
