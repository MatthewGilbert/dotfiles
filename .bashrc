export PATH=/home/matthew/anaconda/bin:$PATH
export EDITOR=vim

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias ds='du -hs * | sort -h'

svim() {
    vim -o "$@"
}

kpython(){
  docker run -v $PWD:/tmp/working -w=/tmp/working --rm -it kaggle/python python "$@"
}
ikpython() {
  docker run -v $PWD:/tmp/working -w=/tmp/working --rm -it kaggle/python ipython
}
kjupyter() {
  (sleep 3 && open "http://$(docker-machine ip docker2):8888")&
  docker run -v $PWD:/tmp/working -w=/tmp/working -p 8888:8888 --rm -it kaggle/python jupyter notebook --no-browser --ip="\*" --notebook-dir=/tmp/working
}
