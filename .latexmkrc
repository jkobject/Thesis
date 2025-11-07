# LaTeX output configuration
# Don't use output directory for now, build in main directory
# $out_dir = 'build';

# Use pdflatex instead of lualatex for better compatibility
$pdf_mode = 1;  # Use pdflatex
$pdflatex = 'pdflatex -interaction=nonstopmode -file-line-error -synctex=1 -shell-escape %O %S';

# Enable bibtex
$bibtex_use = 2;

# Clean up auxiliary files but keep PDF
$clean_ext = 'aux bbl bcf blg fdb_latexmk fls log out run.xml synctex.gz toc acn acr alg glg glo gls ist lof lot maf mtc mtc0 ptc xdy glsdefs';

# No need to copy PDF since we're building in main directory
# $success_cmd = 'cp build/main.pdf main.pdf';

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
