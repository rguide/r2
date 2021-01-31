setRepositories(ind=1:8)

# Cluster analýza - Ivana
install.packages(c("ALL","cluster","ConsensusClusterPlus","dynamicTreeCut","preprocessCore"))

# Analýza přežití - Renča
install.packages(c("splines","survival","concordance"))

# Analýza přežití - Renča
install.packages(c("foreign","rpart","partykit","rpart.plot","rattle","RColorBrewer"))

# Analýza - Jiří
install.packages(c("genasis","mblm","xlsx"))

# Analýzagenomických dat - Ivana
if (!requireNamespace("BiocManager", quietly = TRUE))
    install.packages("BiocManager")

BiocManager::install("hgu95av2cdf")
BiocManager::install("affy")
