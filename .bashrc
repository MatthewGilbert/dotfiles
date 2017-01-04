export EDITOR=vim

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias ds='du -hs * | sort -h'


export GUROBI_HOME="/opt/gurobi652/linux64"
export PATH="${PATH}:${GUROBI_HOME}/bin"
export LD_LIBRARY_PATH="${LD_LIBRARY_PATH}:${GUROBI_HOME}/lib"
export LD_LIBRARY_PATH="${LD_LIBRARY_PATH}:${HOME}/blp/blpapi_cpp_3.10.7.1/Linux"

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

# added by Anaconda3 4.2.0 installer
export PATH="/home/matthew/anaconda3/bin:$PATH"
