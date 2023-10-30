process REMOVE_HOST_SEQUENCES {
    tag "$meta.id"
    label 'process_medium'

    container "quay.io/biocontainers/hostile:0.1.0--pyhdfd78af_0"


    input: 
        tuple val(meta), path(reads) 

    output:
        tuple val(meta), path("*fastq.gz"), emit: host_removed_fastqs


    script:
    """
    hostile clean --fastq1 ${reads[0]} --fastq2 ${reads[1]}
    """
}