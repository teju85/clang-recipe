mkdir -p clang-py-build && \
    cd clang-py-build && \
    cp -r ../llvm/tools/clang/bindings/python/clang . && \
    cp ../setup.py . && \
    python setup.py build_py && \
    python setup.py install
