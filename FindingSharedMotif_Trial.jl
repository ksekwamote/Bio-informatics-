fr = FastaReader("C:\\Users\\215077958\\Documents\\rosalind_lcsm.fasta")


function showSearch(m,i,s,w)
 wp = join(["-" for i in 1:m]) * w
end;

function naiveSearch(s,w)
        p = length(s); q = length(w)
        bool= false
        m = 0; i = 1
        while (m+q) < (p+1)
        if w[i] == s[m+i]
        if i == q
        bool= true
       return bool
        showSearch(m,i,s,w)
        return(m+1)
        else
        i =i+1
        end
        else
        showSearch(m,i,s,w)
        m = m+1
        i = 1
        end
        end
        bool= false
        return bool
       end;


 function removeWhite(w)
       arr=[]
       for i=1:length(w)
       if w[i]!= ""
       push!(arr , w[i])
       end
       end
       return arr
       end

function splice(w)
                            arr=[]
                            for i=1:length(w)
                            for j=1:length(w)
                            if !isempty(w)
                            push!(arr,w[i:j])
                            end
                            end
                            end
              return removeWhite(arr)
       end


function check(w)
       bool= true
       for i=1:length(array)
       bool = naiveSearch(array[i],w)
       if bool==false
       return false
