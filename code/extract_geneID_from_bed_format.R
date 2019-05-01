###assume input data is in standard .bed file format
##read in bed file
get_geneID_bedfile<-function(bed_file,feature,ID){
    genes_only<-bed_file[bed_file[,feature]=="gene",]##take only genes
    genes_only[,ID]<-gsub(genes_only[,ID],pattern = "ID=",replacement = "") ##remove formatting of ID=
    return(genes_only)
    }
