mkdir -p clang-py-build && \
    cd clang-py-build && \
    cp -r ../cfe/bindings/python/clang . && \
    cp ../setup.py . && \
    $PYTHON setup.py build_py && \
    $PYTHON setup.py install
