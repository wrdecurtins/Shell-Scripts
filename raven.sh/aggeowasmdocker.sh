if  [[ "$PWD" != '/home/will/Desktop/aggeo-wasm-bindings' ]]; then
  echo "Changing to aggeo wasm directory"
  cd /home/will/Desktop/aggeo-wasm-bindings
fi

docker run --rm -it --mount type=bind,src=$PWD,dst=$PWD --user $(id -u):$(id -g) --workdir $PWD emscripten/emsdk
