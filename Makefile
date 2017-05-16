ifeq ($(shell uname -s), Darwin)
	platform = osx
else
	platform = linux
endif

build:
	(cd SiftGPU && make siftgpu)
	(cd pba && make pba)
	(cd vsfm_$(platform) && make)
	(cd graclus1.2/metisLib && make)
	(cd graclus1.2/multilevelLib && make)
	(cd cmvs/program/main && make depend && make cmvs genOption)
	(cd pmvs-2/program/main && make depend && make pmvs2)
	mkdir -p bin
	cp SiftGPU/bin/libsiftgpu.so pba/bin/libpba*.so vsfm_$(platform)/bin/VisualSFM bin/
	cp cmvs/program/main/cmvs cmvs/program/main/genOption pmvs-2/program/main/pmvs2 bin/

clean:
	(cd SiftGPU && make clean)
	(cd pba && make clean)
	(cd vsfm_$(platform) && make clean)
	(cd graclus1.2/metisLib && make realclean)
	(cd graclus1.2/multilevelLib && make realclean)
	(cd cmvs/program/main && make clean)
	(cd pmvs-2/program/main && make clean)
	rm -f bin/cmvs bin/genOption bin/libpba.so bin/libpba_no_gpu.so bin/libsiftgpu.so bin/pmvs2 bin/VisualSFM

