📘 Descripción general

Este flujo de trabajo implementa el cálculo de Polygenic Risk Scores (PRS) utilizando el pipeline oficial del PGS Catalog (pgscatalog/pgsc_calc),
aplicado al dataset oriGen (TEC-Monterrey_Freeze_Three, exoma) y el score file de Suzuki et al. (T2D Multi-ancestry PRS).

El proceso incluye instalación de dependencias, conversión de archivos VCF a formato PLINK2, y ejecución del cálculo del PRS con Nextflow + Docker.

⚙️ Dependencias principales
El entorno fue configurado en una máquina virtual Ubuntu 22.04 con:

Componente	Versión	Descripción
Java	17+	Requerido por Nextflow
Nextflow	≥ 25.10	Motor de flujos de trabajo
Miniconda	25.9	Gestión de dependencias
Docker	≥ 28.2	Ejecución de contenedores del pipeline
pgscatalog/pgsc_calc	2.1.0	Pipeline principal para cálculo de PRS
plink2 (container)	2.00a5.10	Conversión VCF → PGEN

🧩 Flujo de trabajo resumido

1. Instalación del entorno
Instalación de Java 17, Nextflow, Conda y Docker.
Configuración de canales conda-forge, bioconda y defaults.
Conversión de datos genómicos
Archivos de entrada: TEC-Monterrey_Freeze_Three.chr{1..22}.vcf.gz
Conversión a formato PLINK2 (.pgen, .pvar.zst, .psam) mediante Docker

2. Preparación de archivos

Samplesheet: samplesheet_oriGen50k_pfile.csv
Scorefile: Suzuki_T2D_MA_scorefile.txt


📁 Estructura de directorios

PGS_Catalog/
├── plink_files/                         # Archivos PGEN generados
├── samplesheet_oriGen50k_pfile.csv      # Lista de cromosomas / paths
├── Suzuki_T2D_MA_scorefile.txt          # PRS de Suzuki (GRCh38)
├── results_oriGen50k_Suzuki_MA_pfile_min5/
│   ├── score_sum.tsv                    # Resultados por individuo
│   ├── logs/                            # Registros Nextflow
│   └── software_versions.yml
└── work/                                # Carpeta temporal de Nextflow

