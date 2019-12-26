About 2-pass mapping (STAR)

For the most sensitive novel junction discovery,I would recommend running STAR in the 2-pass
mode. It does not increase the number of detected novel junctions, but allows to detect more splices
reads mapping to novel junctions. The basic idea is to run 1st pass of STAR mapping with the
usual parameters, then collect the junctions detected in the first pass, and use them as ”annotated”
junctions for the 2nd pass mapping.
