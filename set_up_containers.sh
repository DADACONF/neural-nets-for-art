# !/bin/bash
# Script to set up Docker containers/aliases for:
#   - Inceptionsim (Deep Dream)
#   - neural-doodle
#   - char-nn

## Inceptionism ##
mkdir output
function doDeepDream() {
  docker run \
    -e INPUT=$1 \
    -e ITER=${2:-'20'} \
    -e SCALE=${3:-'0.1'} \
    -e MODEL=${4-'inception_4c/output'} \
    -v $(pwd):/data \
    -it herval/deepdream  
}
alias deep-dream=doDeepDream
docker pull herval/deepdream

## Neural-doodle ##
mkdir frames
mkdir samples
alias neural-doodle="docker run \
  -v $(pwd)/samples:/nd/samples \
  -v $(pwd)/frames:/nd/frames \
  -it alexjc/neural-doodle"
docker pull alexjc/neural-doodle

## Char-nn ##
mkdir cv
alias char-rnn="docker run \
  -v $(pwd)/cv:/home/char-rnn/cv \
  -it mbartoli/char-rnn"
docker pull mbartoli/char-rnn
