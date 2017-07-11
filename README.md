# GalaxyRefineComplex
Refinement of protein-protein complex model structures driven by interface repacking

## 0. Remark
The GalaxyRefineComplex distribution version supports only **Linux 64-bit** OS and binary files compiled with serial/parallel option.

## 1. Installation
1. Download the GalaxyRefineComplex program
 * Download a copy of GalaxyRefineComplex
    * https://github.com/seoklab/GalaxyRefineComplex
    * https://github.com/seoklab/GalaxyRefineComplex/archive/master.zip
 * Or, clone the GalaxyRefineComplex git repository 
    * git clone https://github.com/seoklab/GalaxyRefineComplex.git

2. Unzip and place the downloaded files
 * unzip GalaxyRefineComplex.zip
 * mv GalaxyRefineComplex $GALAXY_HOME  
    (*example*: GALAXY_HOME=/applic/GalaxyRefineComplex)

3. Execute install.sh
 * $GALAXY_HOME/install.sh

4. Check the downloaded files
 * There should exist:
  * bin: directory for executables  
    There should be build_initial_model, local_optimize, generate_model, and **GalaxyRefineComplex**
  * data: directory for data files
  * examples: directory for example files

5. Set environment variable
 * export GALAXY_HOME=$GALAXY_HOME  
    (*example*: export GALAXY_HOME=/applic/GalaxyRefineComplex)

6. Set MPI environment (optional)
 * GalaxyRefineComplex supports MPICH, so if you have installed MPICH, you can run it in parallel.
 * GalaxyRefineComplex has been tested with MPICH hydra (http://www.mpich.org/static/downloads/3.2/hydra-3.2.tar.gz).
 * You can use parallel version of GalaxyRefineComplex by setting EXEC_MPI environment
    * (in BASH) export EXEC_MPI=$PATH_TO_THE_MPIEXEC (*example*: export GALAXY_HOME=/opt/mpi/mpich/bin/mpiexec)
 * You can set the number of CPU to use by setting NSLOTS environment
    * (in BASH) export NSLOTS=8
    * Since it will use CPUs up to the number of simulation trajectories (default=16 for each protocol),
    so we recommend you to set it one of the divisor (i.e., 4, 8, 16) to make it efficient.

## 2. How to use GalaxyRefineComplex
1. Prepare the input protein structure in PDB format
 * You have to provide a protein complex model in the PDB file format for complex refinement.
 * Protein chains must have different chain IDs and be separated by "TER" line.

2. Run GalaxyRefineComplex
 * Usage: $GALAXY_HOME/bin/GalaxyRefineComplex [-h] [-p INPUT PDB File] [-t TITLE] [-f Sequence] [-s Number of
 samplings] [-o Number of outputs] [--sym] [--protocol1] [--protocol2]
 * Input arguments and options:     
    * -p/--pdb: The input PDB file (mendatory)
    * -t/--title: The title for a GalaxyRefineComplex job
    * -f/--seq: The sequence for the PDB file in FASTA format
    * -s/--n_sample: The number of sampling trajectories (default: 32=16x2)
    * -o/--n_output: The number of refined outputs (default: 10=5x2)
    * --sym: use symmetric refinement (default: False)
    * --protocol1: use the protocol1 only (default: False)
    * --protocol2: use the protocol2 only (default: False)

3. Output of GalaxyRefineComplex
 * The GalaxyRefineComplex generates a working directory, which is named by the job title (default: GalaxyRefineComplex)
 * In the working directory, the following three directories will be generated:   
    * init:   A working directory for cleaning up the input PDB file after initial side-chain optimization is performed.   
    * refine: A working directory for refining protein structure model with SC perturbations and MD relaxations.     
    * model:  The output of GalaxyRefineComplex, refined protein model structures in PDB format will be placed.      
 * The final refined model will be **${JOB Title}/model/model_[1-10].pdb**

## 3. Release log
* Jul, 2017: The first release of GalaxyRefineComplex

## 4. References
* L. Heo, H. Lee, and C. Seok, GalaxyRefineComplex: Refinement of protein-protein complex model structures driven by
 interface repacking, Sci. Rep. 6, 32153 (2016). [[PUBMED]](http://www.ncbi.nlm.nih.gov/pubmed/27535582)

## 5. Contact
* chaok@snu.ac.kr
* compbio.galaxy@gmail.com

