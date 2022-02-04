cwlVersion: v1.2
class: Workflow

requirements:
  MultipleInputFeatureRequirement: {}

inputs:
  rna_reads_fruitfly_a: File
  rna_reads_fruitfly_b: File

steps:
  quality_control_a:
    run: bio-cwl-tools/fastqc/fastqc_2.cwl
    in:
      reads_file: rna_reads_fruitfly_a
    out: [html_file, zipped_file]

  quality_control_b:
    run: bio-cwl-tools/fastqc/fastqc_2.cwl
    in:
      reads_file: rna_reads_fruitfly_b
    out: [html_file, zipped_file]
    
  multiquality_control:
    run: bio-cwl-tools/multiqc/multiqc.cwl
    in:
      qc_files_array: [quality_control_a/zipped_file, quality_control_b/zipped_file]
    out: [multiqc_html]

outputs:
  qc_html:
    type: File
    outputSource: multiquality_control/multiqc_html

