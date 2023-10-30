remove_host_sequences is a simple Nextflow workflow that removes human host sequences from a csv input of fastq files.  It is a basic wrapper for [Hostile](https://github.com/bede/hostile).

## Usage

```bash
nextflow run jfurlong/remove_host_sequences \
   -profile docker \
   --input samplesheet.csv \
   --outdir <OUTDIR> \
   -c nextflow_aws.config \   #optional
   -with-tower #optional
```

