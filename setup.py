
from setuptools import setup
from Cython.Build import cythonize

setup(
    ext_modules=cythonize("Gusseing_Game.pyx")  # Compiles your Python file
)
