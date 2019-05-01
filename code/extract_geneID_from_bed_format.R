###assume input data is in standard .bed file format
##read in bed file

get_geneID_bedfile<-function(bed_file){
    genes_only<-bed_file[bed_file$V6 =="gene",] ##take only genes
    genes_only$V12<-gsub(genes_only$V12,pattern = "ID=",replacement = "") ##remove formatting of ID=
    return(genes_only)
}