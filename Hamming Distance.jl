function ham(x,y)
       count=0
       for i=1:length(x)
       if(x[i]!=y[i])
       count=count+1
       end
       end
       return count
       end
