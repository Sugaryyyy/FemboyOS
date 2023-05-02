.DEFAULT_GOAL := prepare
prepare:
	@echo "Nyaaa~"
	mkdir make
	@cd make
	@echo "Making config"
	cp FEM_CONFIG make/FEM_CONFIG
	@echo "Edit the FEM_CONFIG file to change the configuration of FemboyOS, the default is the base OS."
compile:
	@echo "Making run.sh file."
	./configure 
	@echo "Compiling"
clean:
	rm -rf make/
distclean:
	rm -rf make/
	delgroup distbuild
	deluser distbuild
iso:
	echo "WIP :3"