#-----------------------------------------------------------------------------------
CLEAN_FOLDER = vivado

.PHONY: clean syn
syn:
	$(MAKE) -C synplify syn

bit:
	$(MAKE) -C vivado bit

clean:
	rm -rf project_3b synlog.tcl *.log *.bak *.jou
	$(MAKE) -C $(CLEAN_FOLDER) clean

#-----------------------------------------------------------------------------------
