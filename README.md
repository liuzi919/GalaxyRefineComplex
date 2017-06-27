# GalaxyRefineComplex
Refinement of protein-protein complex model structures driven by interface repacking

##0. Remark
The GalaxyRefineComplex distribution version supports only **Linux 64-bit** OS and binary files compiled with serial/parallel option.

##1. Installation
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

3. Check the downloaded files
 * There should exist:
  * bin: directory for executables  
    There should be build_initial_model, local_optimize, generate_model, and **GalaxyRefineComplex**
  * data: directory for data files
  * examples: directory for example files

4. Set environment variable
 * export GALAXY_HOME=$GALAXY_HOME  
    (*example*: export GALAXY_HOME=/applic/GalaxyRefineComplex)

5. Set MPI environment (optional)
    TODO

##2. How to use GalaxyRefineComplex
1. Prepare the input protein structure in PDB format
 * You have to provide a protein complex model in the PDB file format for complex refinement.
 * Protein chains must have different chain IDs and be separated by "TER" line.

2. Run GalaxyRefineComplex
 * Usage: $GALAXY_HOME/bin/GalaxyRefineComplex [-h] [-p INPUT PDB File] [-t TITLE] [-s N_sample] [-o N_output]
 * Input arguments and options:     

3. Output of GalaxyRefineComplex
 * The GalaxyRefineComplex generates a working directory, which is named by the job title (default: GalaxyRefineComplex)
 * In the working directory, the following three directories will be generated:   
    * init:   A working directory for cleaning up the input PDB file after initial side-chain optimization is performed.   
    * refine: A working directory for refining protein structure model with SC perturbations and MD relaxations.     
    * model:  The output of GalaxyRefineComplex, refined protein model structures in PDB format will be placed.      
 * The final refined model will be **${JOB Title}/model/model.pdb**

##3. Release log
* xx Jun 2017: The first release of GalaxyRefineComplex

##4. References
* L. Heo, H. Lee, and C. Seok, GalaxyRefineComplex: Refinement of protein-protein complex model structures driven by
 interface repacking, Sci. Rep. 6, 32153 (2016). [[PUBMED]](http://www.ncbi.nlm.nih.gov/pubmed/27535582)
* L. Heo, H. Park, and C. Seok, GalaxyRefineComplex: Protein structure refinement driven by side-chain repacking, 
 Nucleic Acids Res. 41 (W1), W384-W388 (2013). [[PUBMED]](http://www.ncbi.nlm.nih.gov/pubmed/23737448)

##5. Contact
* chaok@snu.ac.kr
* compbio.galaxy@gmail.com

