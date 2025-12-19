# Genome quality control and assembly selection

## Objective
The objective of this step was to assess the quality of publicly available genome assemblies of Aureobasidium pullulans (taxid 5580) and to select high-assemblies suitable for downstream analysis, including proteome prediction, KEGG annotation and structural modeling.

## Quality control criteria
Two primary metrics were used for an initial quality assessment:

### 1. Genome size
The expected genome size of Aureobasidium pullulans is approximately 28-30 Mb, based on previously published assemblies and reference genomes.

Assemblies with genome sizes substantially deviating from this range were considered potentially: 
-incomplete
-misclassified
-or affected by contamination

Such assemblies were excluded from further analysis.

### 2. Contig count
The number of contigs per assembly was used as a proxy for assembly fragmentation.

Assemblies were interpreted as follows:
- <50 contigs: high-quality assemblies
- 50-100 contigs: good-quality assemblies
- 100-200 contigs: acceptable but fragmented assemblies
- >200 contigs: higlhy fragmented assemblies

Assemblies with fewer contigs were prioritized for downstream analyses, particularly those requiring accurate gene prediction.

## Results of quality control
Most assemblies showed genome sizes within the expected range (~28-30Mb), indicating overall consistency among A. pullulans.

However, several assemblies were identified as outliers:
- Assemblies with unusually large genome sizes ( >40Mb) were excluded as likely misclassified or contaminated.
- Assemblies with notably smaller genome sizes (<26 Mb) were considered potentially incomplete and were excluded from reference selection.

A subset of assemblies combined both appropriate genome size and low contig counts (<50 contigs), indicating high assembly quality.

