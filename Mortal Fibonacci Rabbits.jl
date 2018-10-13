function freq(arr,num)
       count=0
       for i=1:length(arr)
       if arr[i]==num
       count=count+1
       end
       end
       return count
       end

 function clean(arr)
       array=[]
       for i=1:length(arr)
       if arr[i] in arr
       else
       append!(array ,arr[i])
       end
       end
       return array
       end

function waste(arr)
       array= clean(arr)
       was =[]
       for i=1:length(array)
       if freq(arr,array[i])>=3
       push!(was,array[i])
       end
       end
       return was
       end

function fib(arr)
       total=0
       waste=[]
       for j=1:97
       total=length(arr)
       array=clean(arr)
       len= length(array)
       for i=1:len
       if freq(arr,array[i])==1
         push!(arr,array[i])
       elseif freq(arr,array[i])>=2 && freq(arr,array[i])<=17 
         push!(arr,maximum(arr)+1)
         push!(arr,array[i])
       elseif freq(arr,array[i])==18 && !(array[i] in waste)
         push!(waste,array[i])
         push!(arr,maximum(arr)+1)
       end
       end
       total=total-length(arr)
       end
       return total
       end
