## Neural Networks for Art - DADACONF 0.1 - May 2016

### Set-up:
- Install [Docker](https://docs.docker.com/mac/)
- Source the set-up script. This will download the nescessary Docker containers, create some folders in the working directory, and set-up some handy aliases for you:
  ```
  source .set_up_containers.sh
  ```

### Tools Included:
##### - [Deep Dream](https://github.com/google/deepdream) (Inceptionism)
  - Usage: `deep-dream {input image path} {number of iterations, default 20} {scale change between iterations, default 0.1} {layer to maximize activations for, default inception_4c/output}`. Saves images to `/output`.
  - Source Docker Image: [herval/deepdream](https://hub.docker.com/r/herval/deepdream/)
  - More Links:
    - Google's [iPython Notebook](https://github.com/google/deepdream/blob/master/dream.ipynb)
    - A [deep zoom](https://vimeo.com/132623267) I made
    - [/r/deepdream subreddit](https://www.reddit.com/r/deepdream)

##### - [Neural Doodle](https://github.com/alexjc/neural-doodle)
  - Usage: `neural-doodle` then any of the commands decribed in the repo (minus the `python3` at the beginning). Saves intermediate frames to `/frames` and outputs to `/samples`. **SLOW** on CPU!
  - Source Docker Image: [alexjc/neural-doodle](https://hub.docker.com/r/alexjc/neural-doodle/)

##### - [Char-rnn](https://github.com/karpathy/char-rnn)
  - Usage: `char-rnn` opens an interactive shell with `train.lua` and `sample.lua` which can be used as described in the repo. Saves model checkpoints to `/cv`
  - Source Docker Image: [mbartoli/char-rnn](https://hub.docker.com/r/mbartoli/char-rnn)
  - More Links:
    - [The Unreasonable Effectiveness of Recurrent Neural Networks](http://karpathy.github.io/2015/05/21/rnn-effectiveness/) - A really great blog-post by the author of the github repo, explaining the model with examples.
    - [Music](https://soundcloud.com/seaandsailor/sets/char-rnn-composes-irish-folk-music) generated after training on Irish Folks songs
    - Sample outputs from my networks, trained on:
      - [A collection of Trump debate transcripts](http://pastebin.com/jzR2UBpA)
      - [Every IMDB plot summary](http://pastebin.com/j2vj0Fsk)
