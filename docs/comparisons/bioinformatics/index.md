+++
title = "Bioinformatics"
+++

# Bioinformatics

The [BioJulia](https://github.com/biojulia) organization collects a lot of great packages related to bioinformatics.

## Bio.jl is Deprecated

Note that the [Bio.jl](https://github.com/BioJulia/Bio.jl) package is deprecated.
In [this blogpost](https://biojulia.dev/posts/biojl/), the main developer of Bio.jl, describes where the functionality has gone:


* Bio.Seq became [BioSequences.jl](https://github.com/BioJulia/BioSequences.jl/)
* Bio.Align became [BioAlignments.jl](https://github.com/BioJulia/BioAlignments.jl/)
* Bio.Intervals became [GenomicFeatures.jl](https://github.com/BioJulia/GenomicFeatures.jl/)
* Bio.Structure became [BioStructures.jl](https://github.com/BioJulia/BioStructures.jl/)
* Bio.Var became [GeneticVariation.jl](https://github.com/BioJulia/GeneticVariation.jl/)
* Bio.Phylo became [Phylogenies.jl](https://github.com/BioJulia/Phylogenies.jl/)
* Bio.Services became [BioServices.jl](https://github.com/BioJulia/BioServices.jl/)
* Bio.Tools became [BioTools.jl](https://github.com/BioJulia/BioTools.jl/) (now archived)

# File Parsers

An important task in bioinformatics is parsing files in various standard formats.
Here we list some file formats and packages with parsers:

* [FASTA](https://en.wikipedia.org/wiki/FASTA_format) (.fas, .fasta, .fa): DNA or protein sequences without annotations
  - [FASTX](https://github.com/BioJulia/FASTX.jl)
* [FASTQ](https://en.wikipedia.org/wiki/FASTQ_format) (.fq, .fastq): DNA sequences with quality information
  - [FASTX](https://github.com/BioJulia/FASTX.jl)
* [GENBANK](https://en.wikipedia.org/wiki/GenBank) (.gb, .gbk): DNA or protein sequences with annotations
  - [GenomicAnnotations.jl](https://github.com/BioJulia/GenomicAnnotations.jl)
* EMBL (.embl): DNA or protein sequences with annotations
  - [GenomicAnnotations.jl](https://github.com/BioJulia/GenomicAnnotations.jl)
* GFF3, GFF2/GTF (.gff): Annotated genomes
  - [GenomicAnnotations.jl](https://github.com/BioJulia/GenomicAnnotations.jl)
* [SAM](https://en.wikipedia.org/wiki/SAM_(file_format)) (.sam): Aligned DNA sequences (typically from read mapping). Text based.
  - [XAM.jl](https://github.com/BioJulia/XAM.jl)
* [BAM](https://en.wikipedia.org/wiki/BAM_(file_format)) (.bam): Aligned DNA sequences (typically from read mapping). Binary.
  - [XAM.jl](https://github.com/BioJulia/XAM.jl)
* PDB (.pdb): Protein 3D structure.
  - [BioStructures.jl](https://github.com/BioJulia/BioStructures.jl)
  - [MIToS](https://github.com/diegozea/MIToS.jl)
* [mmCIF](https://en.wikipedia.org/wiki/Macromolecular_Crystallographic_Information_File): Macromolecular Crystallographic Information File (mmCIF) also known as PDBx/mmCIF is a standard text file format for representing macromolecular structure data
  - [BioStructures.jl](https://github.com/BioJulia/BioStructures.jl)
  - [MIToS](https://github.com/diegozea/MIToS.jl)
* [MMTF](https://github.com/rcsb/mmtf): MacroMolecular Transmission Format (MMTF) is a binary encoding of biological structures. 
  - [BioStructures.jl](https://github.com/BioJulia/BioStructures.jl)
* [DSSP](https://github.com/PDB-REDO/dssp) Protein Secondary Structure
  - [ProteinSecondaryStructures.jl](https://github.com/BioJulia/ProteinSecondaryStructures.jl)
* [STRIDE](https://webclu.bio.wzw.tum.de/stride/) Protein Secondary Structure
  - [ProteinSecondaryStructures.jl](https://github.com/BioJulia/ProteinSecondaryStructures.jl)
* [PAF](https://github.com/slimsuite/pafscaff) (.paf) Pairwise mApping Format.
  - [PairwiseMappingFormat.jl](https://github.com/BioJulia/PairwiseMappingFormat.jl)
* [Stockholm][https://en.wikipedia.org/wiki/Stockholm_format] (.sto, .stk, .stockholm): Stockholm format is a multiple sequence alignment format used by Pfam, Rfam and Dfam
  - [MIToS.jl](https://github.com/diegozea/MIToS.jl)
* [A3M](https://en.wikipedia.org/wiki/FASTA_format) A2M/A3M are a family of FASTA-derived formats used for sequence alignments
  - [MIToS.jl](https://github.com/diegozea/MIToS.jl)
* [PIR](https://www.bioinformatics.nl/tools/crab_pir.html) Multiple sequence alignment format
  - [MIToS.jl](https://github.com/diegozea/MIToS.jl)

# Data Structures

The basic data structures for representing DNA, RNA and protein sequences are in [BioSequences.jl](https://github.com/BioJulia/BioSequences.jl)

# Pairwise Sequence Alignments

A core task in bioinformatics is aligning sequences.
This can be done with [BioAlignments.jl](https://github.com/BioJulia/BioAlignments.jl) which includes algorithms for the following pairwise alignment types:

* GlobalAlignment: global-to-global alignment
* SemiGlobalAlignment: local-to-global alignment
* LocalAlignment: local-to-local alignment
* OverlapAlignment: end-free alignment

# Multiple Sequence Alignment (MSA)

I'm not aware of tools in Julia to compute multiple sequence alignment, but [MIToS.jl](https://github.com/diegozea/MIToS.jl) can read the most common MSA formats: stockholm, FASTA, A3M, A2M, PIR or Raw format

# Package descriptions

## BioSequences.jl
{{badge BioSequences}}
> Biological sequences for the julia language
[BioSequences.jl](https://github.com/BioJulia/BioSequences.jl/) BioSequences provides data types and methods for common operations with biological sequences, including DNA, RNA, and amino acid sequences.

It can do sequence search and pattern matching in sequences, and compute simple sequence statistics.

## BioAlignments.jl
{{badge BioAlignments}}
> Sequence alignment tools 
[BioAlignments.jl](https://github.com/BioJulia/BioAlignments.jl/) provides sequence alignment algorithms and data structures.
It includes algorithms for the following pairwise alignment types:

* GlobalAlignment: global-to-global alignment
* SemiGlobalAlignment: local-to-global alignment
* LocalAlignment: local-to-local alignment
* OverlapAlignment: end-free alignment

## GenomicFeatures.jl
{{badge GenomicFeatures}}
> Tools for genomic features in Julia.
[GenomicFeatures.jl](https://github.com/BioJulia/GenomicFeatures.jl/)

## GenomicAnnotations.jl
{{badge GenomicAnnotations}}
> GenomicAnnotations is a package for reading, modifying, and writing genomic annotations in the GenBank, GFF3, GFF2/GTF, and EMBL file formats.
[GenomicAnnotations.jl](https://github.com/BioJulia/GenomicAnnotations.jl)

## BioStructures.jl
> A Julia package to read, write and manipulate macromolecular structures 
{{badge BioStructures}}
[BioStructures.jl](https://github.com/BioJulia/BioStructures.jl/)

From the package README:

BioStructures provides functionality to read, write and manipulate
macromolecular structures, in particular proteins.
[Protein Data Bank](https://www.rcsb.org/pdb/home/home.do) (PDB), mmCIF and MMTF
format files can be read in to a hierarchical data structure. Spatial
calculations and functions to access the PDB are also provided.
It compares favourably in terms of performance to other PDB parsers -
see some [benchmarks online](https://github.com/jgreener64/pdb-benchmarks) - and
should be lightweight enough to build other packages on top of.

## GeneticVariation.jl
{{badge GeneticVariation}}
> Datastructures and algorithms for working with genetic variation
[GeneticVariation.jl](https://github.com/BioJulia/GeneticVariation.jl/)

From the package README:

GeneticVariation provides types and methods for working with datasets of genetic variation. It provides a VCF and BCF parser, as well as methods for working with variation in sequences such as evolutionary distance computation, and counting different mutation types.

## Phylogenies.jl
{{badge Phylogenies}}
> The BioJulia package for working with phylogenetic trees and geneologies. 
[Phylogenies.jl](https://github.com/BioJulia/Phylogenies.jl/)

This looks stale.

From the package README:

A julia package providing an abstract type and interface for phylogenies, a concrete phylogeny type implementation, and higher-level methods for working with phylogenies.

In development.


## GenomeGraphs.jl
{{badge GenomeGraphs}}
> A modern genomics framework for julia
[GenomeGraphs.jl](https://github.com/BioJulia/GenomeGraphs.jl)

From the package README:

GenomeGraphs provides a representation of sequence graphs. Such graphs represent genome assemblies and population graphs of genotypes/haplotypes and variation.


## BioServices.jl
{{badge BioServices}}
> Julia interface to APIs for various bio-related web services 
[BioServices.jl](https://github.com/BioJulia/BioServices.jl/)

## NCBIBlast.jl
{{badge NCBIBlast}}
> Thin wrapper around NCBI's BLAST+ CLI https://www.ncbi.nlm.nih.gov/books/NBK569856/
[NCBIBlast.jl](https://github.com/BioJulia/NCBIBlast.jl/)

From the package README:

This package is a thin wrapper around the Basic Local Alignment Search Tool CLI, better known as BLAST, developed by the National Center for Biotechnology Information (NCBI).

For now, this uses CondaPkg.jl to install BLAST+.

## FASTX.jl
{{badge FASTX}}
> Parse and process FASTA and FASTQ formatted files of biological sequences.
[FASTX](https://github.com/BioJulia/FASTX.jl)

FASTX provides I/O and utilities for manipulating FASTA and FASTQ, formatted sequence data files.

## XAM.jl
{{badge XAM}}
> Parse and process FASTA and FASTQ formatted files of biological sequences. 
[XAM.jl](https://github.com/BioJulia/XAM.jl)

FASTX provides I/O and utilities for manipulating FASTA and FASTQ, formatted sequence data files.

## PairwiseMappingFormat.jl
{{badge PairwiseMappingFormat}}
> Parser for the PAF format in bioinformatics 
[PairwiseMappingFormat.jl](https://github.com/BioJulia/PairwiseMappingFormat.jl)

PairwiseMappingFormat.jl provide a parser for Pairwise Mapping Format (PAF) files. PAF is a simple, tab-delimited format created by programs such as minimap2.

## ProteinSecondaryStructures.jl
{{badge ProteinSecondaryStructures}}
> Wrapper to protein secondary structure calculation packages
[ProteinSecondaryStructures.jl](https://github.com/BioJulia/ProteinSecondaryStructures.jl)

From the package README:

This package parses [STRIDE]( http://webclu.bio.wzw.tum.de/stride/) and [DSSP](https://github.com/PDB-REDO/dssp) secondary structure prediction outputs, to make them convenient to use from Julia, particularly for the analysis of MD simulations. 


## BioMakie.jl
{{badge BioMakie}}
> Plotting and interface tools for biology. 
[BioMakie.jl](https://github.com/BioJulia/BioMakie.jl)

[BioMakie.jl](https://github.com/BioJulia/BioMakie.jl) has functions to visualize

* Protein 3D structures
* Multiple Sequence Alignments

## MIToS.jl
{{badge MIToS}}
> A Julia package to analyze protein sequences, structures, and evolutionary information 
[MIToS](https://github.com/diegozea/MIToS.jl)

From the package README:

MIToS provides a comprehensive suite of tools for the analysis of protein sequences and structures.
It allows working with **Multiple Sequence Alignments (MSAs)** to obtain evolutionary information in the Julia language [1].
In particular, it eases the analysis of coevoling position in an MSA using **Mutual Information (MI)**, a measure of covariation.
MI-derived scores are good predictors of inter-residue contacts in a protein structure and functional sites in proteins [2,3].
To allow such analysis, MIToS also implements several useful tools for working with protein structures, such as those available in the **Protein Data Bank (PDB)** or predicted by AlphaFold 2.

# Star History
{{star_history BioSequences BioAlignments GenomicFeatures BioStructures GeneticVariation Phylogenies GenomeGraphs BioServices NCBIBlast FASTX XAM PairwiseMappingFormat ProteinSecondaryStructures BioMakie MIToS}}
