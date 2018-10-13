using FastaIO
function getFastaRecords(fn)
    recs=[]
    FastaReader(fn) do fr
        for(desc, seq) in fr
            push!(recs,seq)
        end
    end
    return recs
end

#Create failure array
function calcFailArr(s)
    i = 0
    fArr = [i]
    for c in s
        while(i>=1 && s[i]!=c)
            i = fArr[i]
        end
        i += 1
        push!(fArr ,i)
    end
    return fArr
end


recs = getFastaRecords("rosalind_kmp.txt")
fArr = calcFailArr(recs)
#Output
for i in range(2,1,length(fArr)-1)
    print(fArr[i]-1," ")
end


function getFastaRecords(fn)
           recs=""
           FastaReader(fn) do fr
               for(desc, seq) in fr
                   recs=recs*seq
               end
           end
           return recs
       end
