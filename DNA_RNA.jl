function DNA_RNA(s)
       strings=""
       arr = split(s,"")
       for i=1:length(arr)
       if(arr[i]=="T")
       arr[i]="U"
       end
       end
       for i=1:length(arr)
       strings=strings*arr[i]
       end
       return strings
       end
