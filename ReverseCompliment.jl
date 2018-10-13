function reverseComplement(seq)
    #A-T
    #C-G
    r = reverse(seq)
    s = ""
    for i in range(1,1,length(r))
        if(r[i]=='A')
            s=s*"U"
        elseif(r[i]=='U')
            s=s*"A"
        elseif(r[i]=='C')
            s=s*"G"
        elseif(r[i]=='G')
            s=s*"C"
        end
    end
    return s
end
