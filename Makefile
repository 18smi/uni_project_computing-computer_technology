fluid_sim: build src/c/fluid_sim.c emsdk
	emcc src/c/fluid_sim.c -o build/fluid_sim.wasm
	

build: 
	mkdir build




emsdk: 
	git clone https://github.com/emscripten-core/emsdk.git
	cd emsdk
	git pull
	./emsdk install latest
	./emsdk activate latest
	source ./emsdk_env.sh




