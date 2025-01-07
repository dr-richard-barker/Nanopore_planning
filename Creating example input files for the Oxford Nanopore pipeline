# Creating example input files for the Oxford Nanopore pipeline

# Import necessary libraries
import pandas as pd

# Define the output directory for example files
output_dir = "/mnt/data/example_input_files"

# Ensure the output directory exists
import os
os.makedirs(output_dir, exist_ok=True)

# Example FASTQ file (seq_file.fq)
fastq_content = """
@SEQ_ID_1
AGCTTAGCTAGCTTGACTGAC
+
IIIIIIIIIIIIIIIIIIIII
@SEQ_ID_2
CGTAGCTAGTCGATGCTAGCA
+
IIIIIIIIIIIIIIIIIIII
"""

with open(os.path.join(output_dir, "seq_file.fq"), "w") as fastq_file:
    fastq_file.write(fastq_content)

# Example barcode file (barcodes.tsv)
barcode_data = {
    "SampleID": ["Sample_1", "Sample_2"],
    "Barcode": ["BC01", "BC02"],
}
barcode_df = pd.DataFrame(barcode_data)
barcode_file_path = os.path.join(output_dir, "barcodes.tsv")
barcode_df.to_csv(barcode_file_path, sep="\t", index=False)

# Example reference genome (hg38.fa)
fasta_content = """
>chr1
AGCTTAGCTAGCTTGACTGACTGACGTAGCTAGCTAGC
>chr2
CGTAGCTAGTCGATGCTAGCAGCTAGCTGACGTAGCTA
"""

with open(os.path.join(output_dir, "hg38.fa"), "w") as fasta_file:
    fasta_file.write(fasta_content)

# Return paths to the created files
output_files = {
    "FASTQ File": os.path.join(output_dir, "seq_file.fq"),
    "Barcode File": barcode_file_path,
    "Reference Genome": os.path.join(output_dir, "hg38.fa"),
}

output_files
