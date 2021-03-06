#! /bin/bash

# Set the exit code of a pipeline to that of the rightmost command
# to exit with a non-zero status, or zero if all commands of the pipeline exit
set -o pipefail
# cause a bash script to exit immediately when a command fails
set ! -f
# cause the bash shell to treat unset variables as an error and exit immediately
set -u
# echo each line of the script to stdout so we can see what is happening
set -o xtrace
#to turn off echo do 'set +o xtrace'

./test_CRAM_to_md5sum_checker.sh
./test_aligner_CWL_checker.sh
./test_aligner_WDL_checker.sh
./test_variant_caller_WDL_checker.sh
./test_variant_caller_CWL_checker.sh
