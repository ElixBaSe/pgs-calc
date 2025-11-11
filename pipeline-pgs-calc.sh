# Ejemplo datos de exoma (oroGen)en formato Plink

cd ~/PGS_Catalog

  nextflow run pgscatalog/pgsc_calc \
  -profile docker \
  --input samplesheet_oriGen50k_pfile.csv \
  --scorefile Suzuki_T2D_MA_scorefile.txt \
  --target_build GRCh38 \
  --outdir results_oriGen50k_Suzuki_MA_pfile \
  --max_memory '14 GB' \
  -resume
