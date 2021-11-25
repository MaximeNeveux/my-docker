import os
from setuptools import setup, find_packages

project_dir = os.path.dirname(os.path.realpath(__file__))
requirement_file_path = project_dir + '/requirements.txt'
requirements = []
if os.path.isfile(requirement_file_path):
    with open(requirement_file_path) as f:
        requirements = f.read().splitlines()

setup(
    name='mne-snake-basket',
    version='0.0.1-dev1',
    author='Maxime NEVEUX',
    author_email='maxime.neveux@telecomnancy.eu',
    url='https://github.com/MaximeNeveux/mne-snake-basket.git',
    description='A sample project.',
    long_description=open('README.rst').read(),

    packages=find_packages(exclude=['tests', 'data']),
    include_package_data=True,
    install_requires=requirements,

    classifiers=[
        'Programming Language :: Python',
        'Development Status :: 1 - Planning',
        'Operating System :: OS Independent',
        'Programming Language :: Python :: 3.6',
        'Intended Audience :: Education'
    ]
)
