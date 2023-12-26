#!/bin/bash

# Comando 1
echo "Comando: hostname en ibsen"
hostname

echo "Comando: hostname en el contenedor my-python.sif de Singularity"
singularity exec my-python.sif hostname

# Comando 2
echo "Comando: cat /etc/os-release en ibsen"
cat /etc/os-release

echo "Comando: cat /etc/os-release en el contenedor my-python.sif de Singularity"
singularity exec my-python.sif cat /etc/os-release

# Comando 3
echo "Comando: pwd en ibsen"
pwd

echo "Comando: pwd en el contenedor my-python.sif de Singularity"
singularity exec my-python.sif pwd

# Comando 4
echo "Comando: ls -l /home en ibsen"
ls -l /home

echo "Comando: ls -l /home en el contenedor my-python.sif de Singularity"
singularity exec my-python.sif ls -l /home

# Comando 5
echo "Comando: python --version en ibsen"
python --version

echo "Comando: python --version en el contenedor my-python.sif de Singularity"
singularity exec my-python.sif python --version

# Comando 6
echo "Comando: Ejecutando notebook pi.ipynb en ibsen"
ipython ../source/pi.ipynb

echo "Comando: Ejecutando notebook pi.ipynb en el contenedor my-python.sif de Singularity"
singularity exec my-python.sif ipython /app/pi.ipynb 

