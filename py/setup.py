from setuptools import find_packages, setup


setup(
    name = "clang",
    version = "8.0.0", # TODO: get this from meta.yml?
    description = ("Clang python bindings"),
    license = "Apache-2.0",
    packages = find_packages(include=["clang"]),
    classifiers = [
        "Programming Language :: Python",
    ],
    zip_safe = True
)
