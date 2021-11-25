pdfsplit.py figures.pdf

rm figures-3.pdf
rm figures-24.pdf

compress_pdf () {
    gs -sDEVICE=pdfwrite -dNOPAUSE -dQUIET -dBATCH -dPDFSETTINGS=/printer -dCompatibilityLevel=1.4 -sOutputFile=$1-comp.pdf $1.pdf
    mv $1-comp.pdf $1.pdf
}

# Compress specific figures that are too heavy
compress_pdf figures-1 &
compress_pdf figures-2 &
compress_pdf figures-5 &
compress_pdf figures-6 &
compress_pdf figures-7 &
compress_pdf figures-11 &
compress_pdf figures-15 &
compress_pdf figures-17 &
compress_pdf figures-18 &
compress_pdf figures-19 &
compress_pdf figures-20 &
compress_pdf figures-21 &
compress_pdf figures-23 &
compress_pdf figures-31 &
compress_pdf figures-32 &
compress_pdf figures-33 &
compress_pdf figures-38 &

wait

for f in `ls figures-*.pdf`; do
    pdfcrop $f $f  &
done
wait

# Rename to the final name
mv figures-1.pdf intro_CV.pdf
mv figures-2.pdf intro_ML.pdf
mv figures-27.pdf intro_archis.pdf

mv figures-4.pdf shade_motivation.pdf
mv figures-5.pdf shade_entropy.pdf
mv figures-6.pdf shade_condentropy.pdf
mv figures-38.pdf shade_disentangling.pdf

mv figures-7.pdf hybridnet_overview.pdf
mv figures-8.pdf hybridnet_general-archi.pdf
mv figures-9.pdf hybridnet_losses.pdf
mv figures-10.pdf hybridnet_convlarge.pdf
mv figures-11.pdf hybridnet_viz-stl.pdf
mv figures-12.pdf hybridnet_viz-as.pdf
mv figures-13.pdf hybridnet_intuition.pdf
mv figures-14.pdf hybridnet_withshade.pdf
mv figures-28.pdf hybridnet_merge_late.pdf
mv figures-29.pdf hybridnet_merge_early.pdf
mv figures-30.pdf hybridnet_archi_example.pdf
mv figures-34.pdf hybridnet_withshade_samples.pdf
mv figures-35.pdf hybridnet_recloss.pdf
mv figures-36.pdf hybridnet_balacing.pdf

mv figures-15.pdf dualdis_intro.pdf
mv figures-16.pdf dualdis_archi.pdf
mv figures-17.pdf dualdis_celeba_linear.pdf
mv figures-18.pdf dualdis_celeba_change.pdf
mv figures-19.pdf dualdis_celeba_mix.pdf
mv figures-20.pdf dualdis_yale.pdf
mv figures-21.pdf dualdis_norb.pdf
mv figures-22.pdf dualdis_S_yale_cluster.pdf
mv figures-23.pdf dualdis_S_archis.pdf
mv figures-25.pdf dualdis_vae.pdf
mv figures-26.pdf dualdis_gan.pdf
mv figures-31.pdf dualdis_intro_1.pdf
mv figures-32.pdf dualdis_intro_2.pdf
mv figures-33.pdf dualdis_intro_3.pdf
mv figures-37.pdf dualdis_engel.pdf
