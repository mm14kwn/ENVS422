function [] = ldcol( ncol )
%replicates my idl ldcol, i.e. loads my colour table number ncol
a=getmap(ncol);
colormap(a)
end

