#!/bin/bash

#SBATCH -p hpc-bio-ampere
#SBATCH --chdir=/home/alumno04
#SBATCH -J blast-output.std
#SBATCH --output=blast-output.out
#SBATCH --error=blast-output.err
#SBATCH --cpus-per-task=1
#SBATCH --mail-type=NONE #END/START/NONE
#SBATCH --mail-user=MAIL@um.es

# Comandos para ejecutar dentro del contenedor de Singularity
singularity exec /nas/hdd-0/singularity_images/blast_2.9.0--pl526h3066fca_4.sif bash -c '
    # Descomprimir la base de datos usando gzip
    gzip -d zebrafish.1.protein.faa.gz

    # Preparar la base de datos zebrafish usando makeblastdb
    makeblastdb -in zebrafish.1.protein.faa -dbtype prot

    # Realizar la alineación usando blastp
    blastp -query P04156.fasta -db zebrafish.1.protein.faa -out results-blast.txt
'
