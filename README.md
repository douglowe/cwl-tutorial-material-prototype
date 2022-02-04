# Prototype scripts for CWL-Novice Tutorial

Material is based on [Reference-based RNA-Seq data analysis](https://training.galaxyproject.org/training-material/topics/transcriptomics/tutorials/ref-based/tutorial.html)
Galaxy training material.

Preparation steps (same as current tutorial material):
- initialise git repo (or use template repo?)
- git submodule https://github.com/common-workflow-library/bio-cwl-tools.git

Downloading data files, using wget (each is around 150Mb):
- `https://zenodo.org/record/4541751/files/GSM461177_1_subsampled.fastqsanger`
- `https://zenodo.org/record/4541751/files/GSM461177_2_subsampled.fastqsanger`
- `https://zenodo.org/record/4541751/files/GSM461180_1_subsampled.fastqsanger`
- `https://zenodo.org/record/4541751/files/GSM461180_2_subsampled.fastqsanger`

## Lesson 2 (Shell to CWL)

First lesson is to just run the Fast QC process on the subsampled fruitfly DNA. 
Much of the lesson will be the same as the current lesson - just need to change wording slightly.
We should include a paragraph on opening the html file created by the tool - and ask them
to have a look through the report.

Files:
- `rna_seq_workflow_lesson2.cwl`
- `workflow_input_lesson2.yml`

Exercises:
- Ask the students to get some information from each report generated for the different data files we've downloaded. This will involve them making simple changes to the yaml configuration file.

## Lesson 3 (Developing Multi-Step Workflows)

The Galaxy training material moves on to combining reports for multiple samples. This requires the use of the `MultipleInputFeatureRequirement` requirement - I think we are okay here with using it, with a brief explanation and saying that we will talk more about requirements in future lessons.

Example 1 Files:
- `rna_seq_workflow_lesson3a.cwl`
- `workflow_input_lesson3a.yml`



