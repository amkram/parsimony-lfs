# This script fixes the model and parameters to those chosen by IQ-TREE 2 during each iteration of de novo inference,
# and computes the log likelihood of the matOptimize trees under that model

MODEL_STRING_1="GTR{0.22024,1.00411,0.12572,0.16317,3.22584}+F{0.299,0.184,0.195,0.322}+G4{0.141}"
MODEL_STRING_2="GTR{0.18436,0.98688,0.12880,0.16178,3.12701}+F{0.299,0.184,0.195,0.322}+G4{0.216}"
MODEL_STRING_3="GTR{0.17264,0.92744,0.10854,0.13485,2.98405}+F{0.299,0.184,0.195,0.322}+G4{0.242}"

rm -f *ckp*
iqtree2 -s ../../input/AGGREGATE_FASTAS/WITH_REF/1_with_ref.fasta -m "$MODEL_STRING_1" --no-opt-gamma-inv -te iter1.matOptimize.denovo.opt.resolved.nwk.scaled -blmin 0.000000000001 -nt 15 -pre another__likelihood.matOptimize.fixedToIQ.iter1 | grep "BEST SCORE" > another__iter1.matOptimize.denovo.fixedToIQ.likelihood.txt
#iqtree2 -s ../../input/AGGREGATE_FASTAS/WITH_REF/2_with_ref.fasta -m "$MODEL_STRING_2" --no-opt-gamma-inv -te trees/iteration_2/iter2.matOptimize.denovo.opt.resolved.nwk.scaled -blmin 0.000000000001 -nt 15 -pre __likelihood.matOptimize.fixedToIQ.iter2 | grep "BEST SCORE" > __iter2.matOptimize.denovo.fixedToIQ.likelihood.txt
#iqtree2 -s ../../input/AGGREGATE_FASTAS/WITH_REF/3_with_ref.fasta -m "$MODEL_STRING_3" --no-opt-gamma-inv -te trees/iteration_3/iter3.matOptimize.denovo.opt.resolved.nwk.scaled -blmin 0.000000000001 -nt 15 -pre __likelihood.matOptimize.fixedToIQ.iter3 | grep "BEST SCORE" > __iter3.matOptimize.denovo.fixedToIQ.likelihood.txt