fluid_sim: build src/c/fluid_sim.c emsdk
	emcc src/c/fluid_sim.c -o build/fluid_sim.wasm
	

build: 
	mkdir build

dependancys: build
	cd build
	mkdir dependancys	


emsdk: dependancys
	git clone https://github.com/emscripten-core/emsdk.git
	cd emsdk
	git pull
	./emsdk install latest #permition denied needs fixing run by hand currently
	./emsdk activate latest
	source ./emsdk_env.sh