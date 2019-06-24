SRC		=	sbox.v sbox_ref.v tb_sbox.v
MODEL_FLAGS	= 	-reportprogress 300 -work work -lint -hazards
TOP_MODULE    	= 	tb_sbox
modelsim : $(V_SRCS)
	vlib work;
	vlog $(MODEL_FLAGS) $(SRC);
	vsim -batch -t 10ps $(TOP_MODULE) -wlf $(TOP_MODULE).wlf -do "run -all;" 

clean:
	rm -rf work

