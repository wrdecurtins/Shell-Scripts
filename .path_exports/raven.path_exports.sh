export PATH=$HOME/DataGrip-2024.1.1/bin:$PATH
# bit
case ":$PATH:" in
  *":/home/will/bin:"*) ;;
  *) export PATH="$PATH:/home/will/bin" ;;
esac
# bit endexport PATH=$(npm bin -g):$PATH
export PATH=$HOME/bin:$PATH
