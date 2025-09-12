# LaTeX output directory configuration
$out_dir = 'build';

# Ensure that the PDF is generated in the output directory
$pdf_mode = 4;  # Use lualatex

# Make sure latexmk can find input files from the main directory
# when building in the output directory
$ENV{'TEXINPUTS'} = '.:' . ($ENV{'TEXINPUTS'} || '');

# Clean up auxiliary files but keep PDF
$clean_ext = 'aux bbl bcf blg fdb_latexmk fls log out run.xml synctex.gz toc acn acr alg glg glo gls ist lof lot maf mtc mtc0 ptc xdy glsdefs';

# Copy PDF to main directory after successful build
$success_cmd = 'cp build/main.pdf main.pdf';

# Run makeglossaries if needed
add_cus_dep('glo', 'gls', 0, 'run_makeglossaries');
add_cus_dep('acn', 'acr', 0, 'run_makeglossaries');

sub run_makeglossaries {
    my ($base_name, $path) = fileparse($_[0]);
    pushd $path;
    my $return = system "makeglossaries", $base_name;
    popd;
    return $return;
}
