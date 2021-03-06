set moduleName bigint_math_bigint_modexp
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set C_modelName {bigint_math_bigint_modexp}
set C_modelType { void 0 }
set C_modelArgList {
	{ out_r int 8 regular {array 256 { 0 } 0 1 }  }
	{ base_r int 8 regular {array 256 { 1 } 1 1 }  }
	{ exp int 8 regular {array 256 { 1 } 1 1 }  }
	{ mod_r int 8 regular {array 256 { 1 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "out_r", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "base_r", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "exp", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "mod_r", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 19
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ out_r_address0 sc_out sc_lv 8 signal 0 } 
	{ out_r_ce0 sc_out sc_logic 1 signal 0 } 
	{ out_r_we0 sc_out sc_logic 1 signal 0 } 
	{ out_r_d0 sc_out sc_lv 8 signal 0 } 
	{ base_r_address0 sc_out sc_lv 8 signal 1 } 
	{ base_r_ce0 sc_out sc_logic 1 signal 1 } 
	{ base_r_q0 sc_in sc_lv 8 signal 1 } 
	{ exp_address0 sc_out sc_lv 8 signal 2 } 
	{ exp_ce0 sc_out sc_logic 1 signal 2 } 
	{ exp_q0 sc_in sc_lv 8 signal 2 } 
	{ mod_r_address0 sc_out sc_lv 8 signal 3 } 
	{ mod_r_ce0 sc_out sc_logic 1 signal 3 } 
	{ mod_r_q0 sc_in sc_lv 8 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "out_r_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "out_r", "role": "address0" }} , 
 	{ "name": "out_r_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_r", "role": "ce0" }} , 
 	{ "name": "out_r_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_r", "role": "we0" }} , 
 	{ "name": "out_r_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "out_r", "role": "d0" }} , 
 	{ "name": "base_r_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "base_r", "role": "address0" }} , 
 	{ "name": "base_r_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "base_r", "role": "ce0" }} , 
 	{ "name": "base_r_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "base_r", "role": "q0" }} , 
 	{ "name": "exp_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "exp", "role": "address0" }} , 
 	{ "name": "exp_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "exp", "role": "ce0" }} , 
 	{ "name": "exp_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "exp", "role": "q0" }} , 
 	{ "name": "mod_r_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "mod_r", "role": "address0" }} , 
 	{ "name": "mod_r_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mod_r", "role": "ce0" }} , 
 	{ "name": "mod_r_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "mod_r", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "54", "65", "76", "77", "79", "80", "81", "82", "83", "84"], "CDFG" : "bigint_math_bigint_modexp", "VariableLatency" : "1", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "ProcessNetwork" : "0", "Combinational" : "0", "ControlExist" : "1",
		"Port" : [
		{"Name" : "out_r", "Type" : "Memory", "Direction" : "O", "BlockSignal" : [], "SubConnect" : [
			{"SubInst" : "grp_bigint_math_bigint_copy_fu_198", "Port" : "to_r"}, 
			{"SubInst" : "grp_bigint_math_bigint_zero_fu_226", "Port" : "in_r"}]}, 
		{"Name" : "base_r", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : [
			{"SubInst" : "grp_bigint_math_bigint_copy_fu_198", "Port" : "from"}]}, 
		{"Name" : "exp", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : [
			{"SubInst" : "grp_bigint_math_bigint_copy_fu_205", "Port" : "from"}]}, 
		{"Name" : "mod_r", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : [
			{"SubInst" : "grp_bigint_math_bigint_compare_fu_191", "Port" : "a"}, 
			{"SubInst" : "grp_bigint_math_bigint_copy_fu_212", "Port" : "from"}]}, 
		{"Name" : "zero", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : [
			{"SubInst" : "grp_bigint_math_bigint_longdiv_fu_160", "Port" : "zero"}]}, 
		{"Name" : "one", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : [
			{"SubInst" : "grp_bigint_math_bigint_longdiv_fu_160", "Port" : "one"}]}],
		"WaitState" : [
		{"State" : "ap_ST_st8_fsm_7", "FSM" : "ap_CS_fsm", "SubInst" : "grp_bigint_math_bigint_longdiv_fu_160"},
		{"State" : "ap_ST_st15_fsm_14", "FSM" : "ap_CS_fsm", "SubInst" : "grp_bigint_math_bigint_longdiv_fu_160"},
		{"State" : "ap_ST_st21_fsm_20", "FSM" : "ap_CS_fsm", "SubInst" : "grp_bigint_math_bigint_longdiv_fu_160"},
		{"State" : "ap_ST_st31_fsm_30", "FSM" : "ap_CS_fsm", "SubInst" : "grp_bigint_math_bigint_longdiv_fu_160"},
		{"State" : "ap_ST_st19_fsm_18", "FSM" : "ap_CS_fsm", "SubInst" : "grp_bigint_math_bigint_mul_fu_172"},
		{"State" : "ap_ST_st29_fsm_28", "FSM" : "ap_CS_fsm", "SubInst" : "grp_bigint_math_bigint_mul_1_fu_179"},
		{"State" : "ap_ST_st23_fsm_22", "FSM" : "ap_CS_fsm", "SubInst" : "grp_bigint_math_bigint_rightshift_fu_185"},
		{"State" : "ap_ST_st6_fsm_5", "FSM" : "ap_CS_fsm", "SubInst" : "grp_bigint_math_bigint_compare_fu_191"},
		{"State" : "ap_ST_st12_fsm_11", "FSM" : "ap_CS_fsm", "SubInst" : "grp_bigint_math_bigint_compare_fu_191"},
		{"State" : "ap_ST_st17_fsm_16", "FSM" : "ap_CS_fsm", "SubInst" : "grp_bigint_math_bigint_compare_fu_191"},
		{"State" : "ap_ST_st4_fsm_3", "FSM" : "ap_CS_fsm", "SubInst" : "grp_bigint_math_bigint_copy_fu_198"},
		{"State" : "ap_ST_st10_fsm_9", "FSM" : "ap_CS_fsm", "SubInst" : "grp_bigint_math_bigint_copy_fu_198"},
		{"State" : "ap_ST_st32_fsm_31", "FSM" : "ap_CS_fsm", "SubInst" : "grp_bigint_math_bigint_copy_fu_198"},
		{"State" : "ap_ST_st25_fsm_24", "FSM" : "ap_CS_fsm", "SubInst" : "grp_bigint_math_bigint_copy_fu_198"},
		{"State" : "ap_ST_st4_fsm_3", "FSM" : "ap_CS_fsm", "SubInst" : "grp_bigint_math_bigint_copy_fu_205"},
		{"State" : "ap_ST_st4_fsm_3", "FSM" : "ap_CS_fsm", "SubInst" : "grp_bigint_math_bigint_copy_fu_212"},
		{"State" : "ap_ST_st2_fsm_1", "FSM" : "ap_CS_fsm", "SubInst" : "grp_bigint_math_bigint_zero_fu_220"},
		{"State" : "ap_ST_st3_fsm_2", "FSM" : "ap_CS_fsm", "SubInst" : "grp_bigint_math_bigint_zero_fu_220"},
		{"State" : "ap_ST_st4_fsm_3", "FSM" : "ap_CS_fsm", "SubInst" : "grp_bigint_math_bigint_zero_fu_220"},
		{"State" : "ap_ST_st5_fsm_4", "FSM" : "ap_CS_fsm", "SubInst" : "grp_bigint_math_bigint_zero_fu_220"},
		{"State" : "ap_ST_st6_fsm_5", "FSM" : "ap_CS_fsm", "SubInst" : "grp_bigint_math_bigint_zero_fu_220"},
		{"State" : "ap_ST_st7_fsm_6", "FSM" : "ap_CS_fsm", "SubInst" : "grp_bigint_math_bigint_zero_fu_220"},
		{"State" : "ap_ST_st8_fsm_7", "FSM" : "ap_CS_fsm", "SubInst" : "grp_bigint_math_bigint_zero_fu_220"},
		{"State" : "ap_ST_st13_fsm_12", "FSM" : "ap_CS_fsm", "SubInst" : "grp_bigint_math_bigint_zero_fu_220"},
		{"State" : "ap_ST_st19_fsm_18", "FSM" : "ap_CS_fsm", "SubInst" : "grp_bigint_math_bigint_zero_fu_220"},
		{"State" : "ap_ST_st23_fsm_22", "FSM" : "ap_CS_fsm", "SubInst" : "grp_bigint_math_bigint_zero_fu_220"},
		{"State" : "ap_ST_st27_fsm_26", "FSM" : "ap_CS_fsm", "SubInst" : "grp_bigint_math_bigint_zero_fu_220"},
		{"State" : "ap_ST_st2_fsm_1", "FSM" : "ap_CS_fsm", "SubInst" : "grp_bigint_math_bigint_zero_fu_226"},
		{"State" : "ap_ST_st6_fsm_5", "FSM" : "ap_CS_fsm", "SubInst" : "grp_bigint_math_bigint_zero_fu_226"},
		{"State" : "ap_ST_st7_fsm_6", "FSM" : "ap_CS_fsm", "SubInst" : "grp_bigint_math_bigint_zero_fu_226"},
		{"State" : "ap_ST_st13_fsm_12", "FSM" : "ap_CS_fsm", "SubInst" : "grp_bigint_math_bigint_zero_fu_226"},
		{"State" : "ap_ST_st23_fsm_22", "FSM" : "ap_CS_fsm", "SubInst" : "grp_bigint_math_bigint_zero_fu_226"},
		{"State" : "ap_ST_st2_fsm_1", "FSM" : "ap_CS_fsm", "SubInst" : "grp_bigint_math_bigint_zero_fu_232"},
		{"State" : "ap_ST_st23_fsm_22", "FSM" : "ap_CS_fsm", "SubInst" : "grp_bigint_math_bigint_zero_fu_232"}],
		"SubBlockPort" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.zero_1_U", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.one_1_U", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.two_U", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.temp_U", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.temp1_U", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.temp2_U", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.tempBase_U", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.tempExp_U", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.tempMod_U", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.result_U", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_bigint_math_bigint_longdiv_fu_160", "Parent" : "0", "Child" : ["12", "13", "14", "15", "16", "17", "18", "19", "20", "29", "40", "41", "42", "43", "48", "50", "51", "52", "53"], "CDFG" : "bigint_math_bigint_longdiv", "VariableLatency" : "1", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "ProcessNetwork" : "0", "Combinational" : "0", "ControlExist" : "1",
		"Port" : [
		{"Name" : "out_r", "Type" : "Memory", "Direction" : "IO", "BlockSignal" : [], "SubConnect" : [
			{"SubInst" : "grp_bigint_math_bigint_copy_fu_379", "Port" : "to_r"}, 
			{"SubInst" : "grp_bigint_math_bigint_zero_fu_398", "Port" : "in_r"}, 
			{"SubInst" : "grp_bigint_math_bigint_mul_fu_335", "Port" : "a"}, 
			{"SubInst" : "grp_bigint_math_bigint_copy_fu_388", "Port" : "to_r"}]}, 
		{"Name" : "out1", "Type" : "Memory", "Direction" : "O", "BlockSignal" : [], "SubConnect" : [
			{"SubInst" : "grp_bigint_math_bigint_copy_fu_379", "Port" : "to_r"}, 
			{"SubInst" : "grp_bigint_math_bigint_zero_fu_405", "Port" : "in_r"}, 
			{"SubInst" : "grp_bigint_math_bigint_copy_fu_388", "Port" : "to_r"}, 
			{"SubInst" : "grp_bigint_math_bigint_sub_fu_326", "Port" : "out_r"}]}, 
		{"Name" : "a", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : [
			{"SubInst" : "grp_bigint_math_bigint_copy_fu_379", "Port" : "from"}, 
			{"SubInst" : "grp_bigint_math_bigint_sub_fu_326", "Port" : "a"}]}, 
		{"Name" : "b", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : [
			{"SubInst" : "grp_bigint_math_bigint_copy_fu_379", "Port" : "from"}]}, 
		{"Name" : "zero", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : [
			{"SubInst" : "grp_bigint_math_bigint_compare_fu_371", "Port" : "b"}, 
			{"SubInst" : "grp_bigint_math_bigint_copy_fu_388", "Port" : "from"}]}, 
		{"Name" : "one", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : [
			{"SubInst" : "grp_bigint_math_bigint_leftshift_fu_350", "Port" : "a"}, 
			{"SubInst" : "grp_bigint_math_bigint_compare_fu_371", "Port" : "b"}]}],
		"WaitState" : [
		{"State" : "ap_ST_st28_fsm_27", "FSM" : "ap_CS_fsm", "SubInst" : "grp_bigint_math_bigint_sub_fu_326"},
		{"State" : "ap_ST_st43_fsm_42", "FSM" : "ap_CS_fsm", "SubInst" : "grp_bigint_math_bigint_sub_fu_326"},
		{"State" : "ap_ST_st41_fsm_40", "FSM" : "ap_CS_fsm", "SubInst" : "grp_bigint_math_bigint_mul_fu_335"},
		{"State" : "ap_ST_st21_fsm_20", "FSM" : "ap_CS_fsm", "SubInst" : "grp_bigint_math_bigint_leftshift_fu_343"},
		{"State" : "ap_ST_st21_fsm_20", "FSM" : "ap_CS_fsm", "SubInst" : "grp_bigint_math_bigint_leftshift_fu_350"},
		{"State" : "ap_ST_st32_fsm_31", "FSM" : "ap_CS_fsm", "SubInst" : "grp_bigint_math_bigint_rightshift_fu_358"},
		{"State" : "ap_ST_st36_fsm_35", "FSM" : "ap_CS_fsm", "SubInst" : "grp_bigint_math_bigint_rightshift_fu_358"},
		{"State" : "ap_ST_st24_fsm_23", "FSM" : "ap_CS_fsm", "SubInst" : "grp_bigint_math_bigint_add_fu_364"},
		{"State" : "ap_ST_st6_fsm_5", "FSM" : "ap_CS_fsm", "SubInst" : "grp_bigint_math_bigint_compare_fu_371"},
		{"State" : "ap_ST_st8_fsm_7", "FSM" : "ap_CS_fsm", "SubInst" : "grp_bigint_math_bigint_compare_fu_371"},
		{"State" : "ap_ST_st10_fsm_9", "FSM" : "ap_CS_fsm", "SubInst" : "grp_bigint_math_bigint_compare_fu_371"},
		{"State" : "ap_ST_st23_fsm_22", "FSM" : "ap_CS_fsm", "SubInst" : "grp_bigint_math_bigint_compare_fu_371"},
		{"State" : "ap_ST_st4_fsm_3", "FSM" : "ap_CS_fsm", "SubInst" : "grp_bigint_math_bigint_copy_fu_379"},
		{"State" : "ap_ST_st6_fsm_5", "FSM" : "ap_CS_fsm", "SubInst" : "grp_bigint_math_bigint_copy_fu_379"},
		{"State" : "ap_ST_st46_fsm_45", "FSM" : "ap_CS_fsm", "SubInst" : "grp_bigint_math_bigint_copy_fu_379"},
		{"State" : "ap_ST_st39_fsm_38", "FSM" : "ap_CS_fsm", "SubInst" : "grp_bigint_math_bigint_copy_fu_379"},
		{"State" : "ap_ST_st26_fsm_25", "FSM" : "ap_CS_fsm", "SubInst" : "grp_bigint_math_bigint_copy_fu_379"},
		{"State" : "ap_ST_st30_fsm_29", "FSM" : "ap_CS_fsm", "SubInst" : "grp_bigint_math_bigint_copy_fu_379"},
		{"State" : "ap_ST_st34_fsm_33", "FSM" : "ap_CS_fsm", "SubInst" : "grp_bigint_math_bigint_copy_fu_379"},
		{"State" : "ap_ST_st38_fsm_37", "FSM" : "ap_CS_fsm", "SubInst" : "grp_bigint_math_bigint_copy_fu_379"},
		{"State" : "ap_ST_st45_fsm_44", "FSM" : "ap_CS_fsm", "SubInst" : "grp_bigint_math_bigint_copy_fu_379"},
		{"State" : "ap_ST_st46_fsm_45", "FSM" : "ap_CS_fsm", "SubInst" : "grp_bigint_math_bigint_copy_fu_388"},
		{"State" : "ap_ST_st45_fsm_44", "FSM" : "ap_CS_fsm", "SubInst" : "grp_bigint_math_bigint_copy_fu_388"},
		{"State" : "ap_ST_st2_fsm_1", "FSM" : "ap_CS_fsm", "SubInst" : "grp_bigint_math_bigint_zero_fu_398"},
		{"State" : "ap_ST_st4_fsm_3", "FSM" : "ap_CS_fsm", "SubInst" : "grp_bigint_math_bigint_zero_fu_398"},
		{"State" : "ap_ST_st6_fsm_5", "FSM" : "ap_CS_fsm", "SubInst" : "grp_bigint_math_bigint_zero_fu_398"},
		{"State" : "ap_ST_st19_fsm_18", "FSM" : "ap_CS_fsm", "SubInst" : "grp_bigint_math_bigint_zero_fu_398"},
		{"State" : "ap_ST_st21_fsm_20", "FSM" : "ap_CS_fsm", "SubInst" : "grp_bigint_math_bigint_zero_fu_398"},
		{"State" : "ap_ST_st6_fsm_5", "FSM" : "ap_CS_fsm", "SubInst" : "grp_bigint_math_bigint_zero_fu_405"},
		{"State" : "ap_ST_st19_fsm_18", "FSM" : "ap_CS_fsm", "SubInst" : "grp_bigint_math_bigint_zero_fu_405"},
		{"State" : "ap_ST_st21_fsm_20", "FSM" : "ap_CS_fsm", "SubInst" : "grp_bigint_math_bigint_zero_fu_405"}],
		"SubBlockPort" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bigint_math_bigint_longdiv_fu_160.zero_U", "Parent" : "11", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bigint_math_bigint_longdiv_fu_160.one_U", "Parent" : "11", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bigint_math_bigint_longdiv_fu_160.tempA_U", "Parent" : "11", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bigint_math_bigint_longdiv_fu_160.tempB_U", "Parent" : "11", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bigint_math_bigint_longdiv_fu_160.temp_U", "Parent" : "11", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bigint_math_bigint_longdiv_fu_160.d_U", "Parent" : "11", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bigint_math_bigint_longdiv_fu_160.quot_U", "Parent" : "11", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bigint_math_bigint_longdiv_fu_160.bitPlace_U", "Parent" : "11", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bigint_math_bigint_longdiv_fu_160.grp_bigint_math_bigint_sub_fu_326", "Parent" : "11", "Child" : ["21", "22", "23", "24", "26", "27", "28"], "CDFG" : "bigint_math_bigint_sub", "VariableLatency" : "1", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "ProcessNetwork" : "0", "Combinational" : "0", "ControlExist" : "1",
		"Port" : [
		{"Name" : "out_r", "Type" : "Memory", "Direction" : "O", "BlockSignal" : [], "SubConnect" : [
			{"SubInst" : "grp_bigint_math_bigint_zero_fu_252", "Port" : "in_r"}]}, 
		{"Name" : "a", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "b", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}],
		"WaitState" : [
		{"State" : "ap_ST_st7_fsm_6", "FSM" : "ap_CS_fsm", "SubInst" : "grp_bigint_math_bigint_compare_fu_246"},
		{"State" : "ap_ST_st2_fsm_1", "FSM" : "ap_CS_fsm", "SubInst" : "grp_bigint_math_bigint_zero_fu_252"},
		{"State" : "ap_ST_st7_fsm_6", "FSM" : "ap_CS_fsm", "SubInst" : "grp_bigint_math_bigint_zero_fu_252"},
		{"State" : "ap_ST_st2_fsm_1", "FSM" : "ap_CS_fsm", "SubInst" : "grp_bigint_math_bigint_zero_fu_258"},
		{"State" : "ap_ST_st2_fsm_1", "FSM" : "ap_CS_fsm", "SubInst" : "grp_bigint_math_bigint_zero_fu_264"}],
		"SubBlockPort" : []},
	{"Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_bigint_math_bigint_longdiv_fu_160.grp_bigint_math_bigint_sub_fu_326.tempA_U", "Parent" : "20", "Child" : []},
	{"Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_bigint_math_bigint_longdiv_fu_160.grp_bigint_math_bigint_sub_fu_326.tempB_U", "Parent" : "20", "Child" : []},
	{"Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_bigint_math_bigint_longdiv_fu_160.grp_bigint_math_bigint_sub_fu_326.carry_U", "Parent" : "20", "Child" : []},
	{"Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_bigint_math_bigint_longdiv_fu_160.grp_bigint_math_bigint_sub_fu_326.grp_bigint_math_bigint_compare_fu_246", "Parent" : "20", "Child" : ["25"], "CDFG" : "bigint_math_bigint_compare", "VariableLatency" : "1", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "ProcessNetwork" : "0", "Combinational" : "0", "ControlExist" : "1",
		"Port" : [
		{"Name" : "a", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "b", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}],
		"WaitState" : [],
		"SubBlockPort" : []},
	{"Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_bigint_math_bigint_longdiv_fu_160.grp_bigint_math_bigint_sub_fu_326.grp_bigint_math_bigint_compare_fu_246.state_U", "Parent" : "24", "Child" : []},
	{"Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_bigint_math_bigint_longdiv_fu_160.grp_bigint_math_bigint_sub_fu_326.grp_bigint_math_bigint_zero_fu_252", "Parent" : "20", "Child" : [], "CDFG" : "bigint_math_bigint_zero", "VariableLatency" : "1", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "ProcessNetwork" : "0", "Combinational" : "0", "ControlExist" : "1",
		"Port" : [
		{"Name" : "in_r", "Type" : "Memory", "Direction" : "O", "BlockSignal" : [], "SubConnect" : []}],
		"WaitState" : [],
		"SubBlockPort" : []},
	{"Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_bigint_math_bigint_longdiv_fu_160.grp_bigint_math_bigint_sub_fu_326.grp_bigint_math_bigint_zero_fu_258", "Parent" : "20", "Child" : [], "CDFG" : "bigint_math_bigint_zero", "VariableLatency" : "1", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "ProcessNetwork" : "0", "Combinational" : "0", "ControlExist" : "1",
		"Port" : [
		{"Name" : "in_r", "Type" : "Memory", "Direction" : "O", "BlockSignal" : [], "SubConnect" : []}],
		"WaitState" : [],
		"SubBlockPort" : []},
	{"Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_bigint_math_bigint_longdiv_fu_160.grp_bigint_math_bigint_sub_fu_326.grp_bigint_math_bigint_zero_fu_264", "Parent" : "20", "Child" : [], "CDFG" : "bigint_math_bigint_zero", "VariableLatency" : "1", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "ProcessNetwork" : "0", "Combinational" : "0", "ControlExist" : "1",
		"Port" : [
		{"Name" : "in_r", "Type" : "Memory", "Direction" : "O", "BlockSignal" : [], "SubConnect" : []}],
		"WaitState" : [],
		"SubBlockPort" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bigint_math_bigint_longdiv_fu_160.grp_bigint_math_bigint_mul_fu_335", "Parent" : "11", "Child" : ["30", "31", "32", "33", "38", "39"], "CDFG" : "bigint_math_bigint_mul", "VariableLatency" : "1", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "ProcessNetwork" : "0", "Combinational" : "0", "ControlExist" : "1",
		"Port" : [
		{"Name" : "out_r", "Type" : "Memory", "Direction" : "IO", "BlockSignal" : [], "SubConnect" : [
			{"SubInst" : "grp_bigint_math_bigint_add_1_fu_210", "Port" : "out_r"}, 
			{"SubInst" : "grp_bigint_math_bigint_zero_fu_217", "Port" : "in_r"}]}, 
		{"Name" : "a", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "b", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}],
		"WaitState" : [
		{"State" : "ap_ST_st19_fsm_18", "FSM" : "ap_CS_fsm", "SubInst" : "grp_bigint_math_bigint_add_1_fu_210"},
		{"State" : "ap_ST_st2_fsm_1", "FSM" : "ap_CS_fsm", "SubInst" : "grp_bigint_math_bigint_zero_fu_217"},
		{"State" : "ap_ST_st7_fsm_6", "FSM" : "ap_CS_fsm", "SubInst" : "grp_bigint_math_bigint_zero_fu_217"},
		{"State" : "ap_ST_st21_fsm_20", "FSM" : "ap_CS_fsm", "SubInst" : "grp_bigint_math_bigint_zero_fu_217"},
		{"State" : "ap_ST_st2_fsm_1", "FSM" : "ap_CS_fsm", "SubInst" : "grp_bigint_math_bigint_zero_fu_223"},
		{"State" : "ap_ST_st7_fsm_6", "FSM" : "ap_CS_fsm", "SubInst" : "grp_bigint_math_bigint_zero_fu_223"}],
		"SubBlockPort" : []},
	{"Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_bigint_math_bigint_longdiv_fu_160.grp_bigint_math_bigint_mul_fu_335.sum_U", "Parent" : "29", "Child" : []},
	{"Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_bigint_math_bigint_longdiv_fu_160.grp_bigint_math_bigint_mul_fu_335.tempA_U", "Parent" : "29", "Child" : []},
	{"Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_bigint_math_bigint_longdiv_fu_160.grp_bigint_math_bigint_mul_fu_335.tempB_U", "Parent" : "29", "Child" : []},
	{"Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_bigint_math_bigint_longdiv_fu_160.grp_bigint_math_bigint_mul_fu_335.grp_bigint_math_bigint_add_1_fu_210", "Parent" : "29", "Child" : ["34", "35", "36", "37"], "CDFG" : "bigint_math_bigint_add_1", "VariableLatency" : "1", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "ProcessNetwork" : "0", "Combinational" : "0", "ControlExist" : "1",
		"Port" : [
		{"Name" : "out_r", "Type" : "Memory", "Direction" : "IO", "BlockSignal" : [], "SubConnect" : [
			{"SubInst" : "grp_bigint_math_bigint_zero_fu_176", "Port" : "in_r"}]}, 
		{"Name" : "b", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}],
		"WaitState" : [
		{"State" : "ap_ST_st2_fsm_1", "FSM" : "ap_CS_fsm", "SubInst" : "grp_bigint_math_bigint_zero_fu_176"},
		{"State" : "ap_ST_st7_fsm_6", "FSM" : "ap_CS_fsm", "SubInst" : "grp_bigint_math_bigint_zero_fu_176"},
		{"State" : "ap_ST_st2_fsm_1", "FSM" : "ap_CS_fsm", "SubInst" : "grp_bigint_math_bigint_zero_fu_182"}],
		"SubBlockPort" : []},
	{"Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_bigint_math_bigint_longdiv_fu_160.grp_bigint_math_bigint_mul_fu_335.grp_bigint_math_bigint_add_1_fu_210.tempA_U", "Parent" : "33", "Child" : []},
	{"Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_bigint_math_bigint_longdiv_fu_160.grp_bigint_math_bigint_mul_fu_335.grp_bigint_math_bigint_add_1_fu_210.tempB_U", "Parent" : "33", "Child" : []},
	{"Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_bigint_math_bigint_longdiv_fu_160.grp_bigint_math_bigint_mul_fu_335.grp_bigint_math_bigint_add_1_fu_210.grp_bigint_math_bigint_zero_fu_176", "Parent" : "33", "Child" : [], "CDFG" : "bigint_math_bigint_zero", "VariableLatency" : "1", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "ProcessNetwork" : "0", "Combinational" : "0", "ControlExist" : "1",
		"Port" : [
		{"Name" : "in_r", "Type" : "Memory", "Direction" : "O", "BlockSignal" : [], "SubConnect" : []}],
		"WaitState" : [],
		"SubBlockPort" : []},
	{"Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_bigint_math_bigint_longdiv_fu_160.grp_bigint_math_bigint_mul_fu_335.grp_bigint_math_bigint_add_1_fu_210.grp_bigint_math_bigint_zero_fu_182", "Parent" : "33", "Child" : [], "CDFG" : "bigint_math_bigint_zero", "VariableLatency" : "1", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "ProcessNetwork" : "0", "Combinational" : "0", "ControlExist" : "1",
		"Port" : [
		{"Name" : "in_r", "Type" : "Memory", "Direction" : "O", "BlockSignal" : [], "SubConnect" : []}],
		"WaitState" : [],
		"SubBlockPort" : []},
	{"Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_bigint_math_bigint_longdiv_fu_160.grp_bigint_math_bigint_mul_fu_335.grp_bigint_math_bigint_zero_fu_217", "Parent" : "29", "Child" : [], "CDFG" : "bigint_math_bigint_zero", "VariableLatency" : "1", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "ProcessNetwork" : "0", "Combinational" : "0", "ControlExist" : "1",
		"Port" : [
		{"Name" : "in_r", "Type" : "Memory", "Direction" : "O", "BlockSignal" : [], "SubConnect" : []}],
		"WaitState" : [],
		"SubBlockPort" : []},
	{"Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_bigint_math_bigint_longdiv_fu_160.grp_bigint_math_bigint_mul_fu_335.grp_bigint_math_bigint_zero_fu_223", "Parent" : "29", "Child" : [], "CDFG" : "bigint_math_bigint_zero", "VariableLatency" : "1", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "ProcessNetwork" : "0", "Combinational" : "0", "ControlExist" : "1",
		"Port" : [
		{"Name" : "in_r", "Type" : "Memory", "Direction" : "O", "BlockSignal" : [], "SubConnect" : []}],
		"WaitState" : [],
		"SubBlockPort" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bigint_math_bigint_longdiv_fu_160.grp_bigint_math_bigint_leftshift_fu_343", "Parent" : "11", "Child" : [], "CDFG" : "bigint_math_bigint_leftshift", "VariableLatency" : "1", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "ProcessNetwork" : "0", "Combinational" : "0", "ControlExist" : "1",
		"Port" : [
		{"Name" : "out_r", "Type" : "Memory", "Direction" : "IO", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "a", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "shift", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}],
		"WaitState" : [],
		"SubBlockPort" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bigint_math_bigint_longdiv_fu_160.grp_bigint_math_bigint_leftshift_fu_350", "Parent" : "11", "Child" : [], "CDFG" : "bigint_math_bigint_leftshift", "VariableLatency" : "1", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "ProcessNetwork" : "0", "Combinational" : "0", "ControlExist" : "1",
		"Port" : [
		{"Name" : "out_r", "Type" : "Memory", "Direction" : "IO", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "a", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "shift", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}],
		"WaitState" : [],
		"SubBlockPort" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bigint_math_bigint_longdiv_fu_160.grp_bigint_math_bigint_rightshift_fu_358", "Parent" : "11", "Child" : [], "CDFG" : "bigint_math_bigint_rightshift", "VariableLatency" : "1", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "ProcessNetwork" : "0", "Combinational" : "0", "ControlExist" : "1",
		"Port" : [
		{"Name" : "out_r", "Type" : "Memory", "Direction" : "IO", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "a", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}],
		"WaitState" : [],
		"SubBlockPort" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bigint_math_bigint_longdiv_fu_160.grp_bigint_math_bigint_add_fu_364", "Parent" : "11", "Child" : ["44", "45", "46", "47"], "CDFG" : "bigint_math_bigint_add", "VariableLatency" : "1", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "ProcessNetwork" : "0", "Combinational" : "0", "ControlExist" : "1",
		"Port" : [
		{"Name" : "out_r", "Type" : "Memory", "Direction" : "IO", "BlockSignal" : [], "SubConnect" : [
			{"SubInst" : "grp_bigint_math_bigint_zero_fu_182", "Port" : "in_r"}]}, 
		{"Name" : "a", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "b", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}],
		"WaitState" : [
		{"State" : "ap_ST_st2_fsm_1", "FSM" : "ap_CS_fsm", "SubInst" : "grp_bigint_math_bigint_zero_fu_182"},
		{"State" : "ap_ST_st7_fsm_6", "FSM" : "ap_CS_fsm", "SubInst" : "grp_bigint_math_bigint_zero_fu_182"},
		{"State" : "ap_ST_st2_fsm_1", "FSM" : "ap_CS_fsm", "SubInst" : "grp_bigint_math_bigint_zero_fu_188"}],
		"SubBlockPort" : []},
	{"Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_bigint_math_bigint_longdiv_fu_160.grp_bigint_math_bigint_add_fu_364.tempA_U", "Parent" : "43", "Child" : []},
	{"Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_bigint_math_bigint_longdiv_fu_160.grp_bigint_math_bigint_add_fu_364.tempB_U", "Parent" : "43", "Child" : []},
	{"Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_bigint_math_bigint_longdiv_fu_160.grp_bigint_math_bigint_add_fu_364.grp_bigint_math_bigint_zero_fu_182", "Parent" : "43", "Child" : [], "CDFG" : "bigint_math_bigint_zero", "VariableLatency" : "1", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "ProcessNetwork" : "0", "Combinational" : "0", "ControlExist" : "1",
		"Port" : [
		{"Name" : "in_r", "Type" : "Memory", "Direction" : "O", "BlockSignal" : [], "SubConnect" : []}],
		"WaitState" : [],
		"SubBlockPort" : []},
	{"Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_bigint_math_bigint_longdiv_fu_160.grp_bigint_math_bigint_add_fu_364.grp_bigint_math_bigint_zero_fu_188", "Parent" : "43", "Child" : [], "CDFG" : "bigint_math_bigint_zero", "VariableLatency" : "1", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "ProcessNetwork" : "0", "Combinational" : "0", "ControlExist" : "1",
		"Port" : [
		{"Name" : "in_r", "Type" : "Memory", "Direction" : "O", "BlockSignal" : [], "SubConnect" : []}],
		"WaitState" : [],
		"SubBlockPort" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bigint_math_bigint_longdiv_fu_160.grp_bigint_math_bigint_compare_fu_371", "Parent" : "11", "Child" : ["49"], "CDFG" : "bigint_math_bigint_compare", "VariableLatency" : "1", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "ProcessNetwork" : "0", "Combinational" : "0", "ControlExist" : "1",
		"Port" : [
		{"Name" : "a", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "b", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}],
		"WaitState" : [],
		"SubBlockPort" : []},
	{"Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_bigint_math_bigint_longdiv_fu_160.grp_bigint_math_bigint_compare_fu_371.state_U", "Parent" : "48", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bigint_math_bigint_longdiv_fu_160.grp_bigint_math_bigint_copy_fu_379", "Parent" : "11", "Child" : [], "CDFG" : "bigint_math_bigint_copy", "VariableLatency" : "1", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "ProcessNetwork" : "0", "Combinational" : "0", "ControlExist" : "1",
		"Port" : [
		{"Name" : "to_r", "Type" : "Memory", "Direction" : "O", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "from", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}],
		"WaitState" : [],
		"SubBlockPort" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bigint_math_bigint_longdiv_fu_160.grp_bigint_math_bigint_copy_fu_388", "Parent" : "11", "Child" : [], "CDFG" : "bigint_math_bigint_copy", "VariableLatency" : "1", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "ProcessNetwork" : "0", "Combinational" : "0", "ControlExist" : "1",
		"Port" : [
		{"Name" : "to_r", "Type" : "Memory", "Direction" : "O", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "from", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}],
		"WaitState" : [],
		"SubBlockPort" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bigint_math_bigint_longdiv_fu_160.grp_bigint_math_bigint_zero_fu_398", "Parent" : "11", "Child" : [], "CDFG" : "bigint_math_bigint_zero", "VariableLatency" : "1", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "ProcessNetwork" : "0", "Combinational" : "0", "ControlExist" : "1",
		"Port" : [
		{"Name" : "in_r", "Type" : "Memory", "Direction" : "O", "BlockSignal" : [], "SubConnect" : []}],
		"WaitState" : [],
		"SubBlockPort" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bigint_math_bigint_longdiv_fu_160.grp_bigint_math_bigint_zero_fu_405", "Parent" : "11", "Child" : [], "CDFG" : "bigint_math_bigint_zero", "VariableLatency" : "1", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "ProcessNetwork" : "0", "Combinational" : "0", "ControlExist" : "1",
		"Port" : [
		{"Name" : "in_r", "Type" : "Memory", "Direction" : "O", "BlockSignal" : [], "SubConnect" : []}],
		"WaitState" : [],
		"SubBlockPort" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_bigint_math_bigint_mul_fu_172", "Parent" : "0", "Child" : ["55", "56", "57", "58", "63", "64"], "CDFG" : "bigint_math_bigint_mul", "VariableLatency" : "1", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "ProcessNetwork" : "0", "Combinational" : "0", "ControlExist" : "1",
		"Port" : [
		{"Name" : "out_r", "Type" : "Memory", "Direction" : "IO", "BlockSignal" : [], "SubConnect" : [
			{"SubInst" : "grp_bigint_math_bigint_add_1_fu_210", "Port" : "out_r"}, 
			{"SubInst" : "grp_bigint_math_bigint_zero_fu_217", "Port" : "in_r"}]}, 
		{"Name" : "a", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "b", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}],
		"WaitState" : [
		{"State" : "ap_ST_st19_fsm_18", "FSM" : "ap_CS_fsm", "SubInst" : "grp_bigint_math_bigint_add_1_fu_210"},
		{"State" : "ap_ST_st2_fsm_1", "FSM" : "ap_CS_fsm", "SubInst" : "grp_bigint_math_bigint_zero_fu_217"},
		{"State" : "ap_ST_st7_fsm_6", "FSM" : "ap_CS_fsm", "SubInst" : "grp_bigint_math_bigint_zero_fu_217"},
		{"State" : "ap_ST_st21_fsm_20", "FSM" : "ap_CS_fsm", "SubInst" : "grp_bigint_math_bigint_zero_fu_217"},
		{"State" : "ap_ST_st2_fsm_1", "FSM" : "ap_CS_fsm", "SubInst" : "grp_bigint_math_bigint_zero_fu_223"},
		{"State" : "ap_ST_st7_fsm_6", "FSM" : "ap_CS_fsm", "SubInst" : "grp_bigint_math_bigint_zero_fu_223"}],
		"SubBlockPort" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bigint_math_bigint_mul_fu_172.sum_U", "Parent" : "54", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bigint_math_bigint_mul_fu_172.tempA_U", "Parent" : "54", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bigint_math_bigint_mul_fu_172.tempB_U", "Parent" : "54", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bigint_math_bigint_mul_fu_172.grp_bigint_math_bigint_add_1_fu_210", "Parent" : "54", "Child" : ["59", "60", "61", "62"], "CDFG" : "bigint_math_bigint_add_1", "VariableLatency" : "1", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "ProcessNetwork" : "0", "Combinational" : "0", "ControlExist" : "1",
		"Port" : [
		{"Name" : "out_r", "Type" : "Memory", "Direction" : "IO", "BlockSignal" : [], "SubConnect" : [
			{"SubInst" : "grp_bigint_math_bigint_zero_fu_176", "Port" : "in_r"}]}, 
		{"Name" : "b", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}],
		"WaitState" : [
		{"State" : "ap_ST_st2_fsm_1", "FSM" : "ap_CS_fsm", "SubInst" : "grp_bigint_math_bigint_zero_fu_176"},
		{"State" : "ap_ST_st7_fsm_6", "FSM" : "ap_CS_fsm", "SubInst" : "grp_bigint_math_bigint_zero_fu_176"},
		{"State" : "ap_ST_st2_fsm_1", "FSM" : "ap_CS_fsm", "SubInst" : "grp_bigint_math_bigint_zero_fu_182"}],
		"SubBlockPort" : []},
	{"Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_bigint_math_bigint_mul_fu_172.grp_bigint_math_bigint_add_1_fu_210.tempA_U", "Parent" : "58", "Child" : []},
	{"Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_bigint_math_bigint_mul_fu_172.grp_bigint_math_bigint_add_1_fu_210.tempB_U", "Parent" : "58", "Child" : []},
	{"Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_bigint_math_bigint_mul_fu_172.grp_bigint_math_bigint_add_1_fu_210.grp_bigint_math_bigint_zero_fu_176", "Parent" : "58", "Child" : [], "CDFG" : "bigint_math_bigint_zero", "VariableLatency" : "1", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "ProcessNetwork" : "0", "Combinational" : "0", "ControlExist" : "1",
		"Port" : [
		{"Name" : "in_r", "Type" : "Memory", "Direction" : "O", "BlockSignal" : [], "SubConnect" : []}],
		"WaitState" : [],
		"SubBlockPort" : []},
	{"Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_bigint_math_bigint_mul_fu_172.grp_bigint_math_bigint_add_1_fu_210.grp_bigint_math_bigint_zero_fu_182", "Parent" : "58", "Child" : [], "CDFG" : "bigint_math_bigint_zero", "VariableLatency" : "1", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "ProcessNetwork" : "0", "Combinational" : "0", "ControlExist" : "1",
		"Port" : [
		{"Name" : "in_r", "Type" : "Memory", "Direction" : "O", "BlockSignal" : [], "SubConnect" : []}],
		"WaitState" : [],
		"SubBlockPort" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bigint_math_bigint_mul_fu_172.grp_bigint_math_bigint_zero_fu_217", "Parent" : "54", "Child" : [], "CDFG" : "bigint_math_bigint_zero", "VariableLatency" : "1", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "ProcessNetwork" : "0", "Combinational" : "0", "ControlExist" : "1",
		"Port" : [
		{"Name" : "in_r", "Type" : "Memory", "Direction" : "O", "BlockSignal" : [], "SubConnect" : []}],
		"WaitState" : [],
		"SubBlockPort" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bigint_math_bigint_mul_fu_172.grp_bigint_math_bigint_zero_fu_223", "Parent" : "54", "Child" : [], "CDFG" : "bigint_math_bigint_zero", "VariableLatency" : "1", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "ProcessNetwork" : "0", "Combinational" : "0", "ControlExist" : "1",
		"Port" : [
		{"Name" : "in_r", "Type" : "Memory", "Direction" : "O", "BlockSignal" : [], "SubConnect" : []}],
		"WaitState" : [],
		"SubBlockPort" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_bigint_math_bigint_mul_1_fu_179", "Parent" : "0", "Child" : ["66", "67", "68", "69", "74", "75"], "CDFG" : "bigint_math_bigint_mul_1", "VariableLatency" : "1", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "ProcessNetwork" : "0", "Combinational" : "0", "ControlExist" : "1",
		"Port" : [
		{"Name" : "out_r", "Type" : "Memory", "Direction" : "IO", "BlockSignal" : [], "SubConnect" : [
			{"SubInst" : "grp_bigint_math_bigint_add_1_fu_204", "Port" : "out_r"}, 
			{"SubInst" : "grp_bigint_math_bigint_zero_fu_211", "Port" : "in_r"}]}, 
		{"Name" : "a", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}],
		"WaitState" : [
		{"State" : "ap_ST_st19_fsm_18", "FSM" : "ap_CS_fsm", "SubInst" : "grp_bigint_math_bigint_add_1_fu_204"},
		{"State" : "ap_ST_st2_fsm_1", "FSM" : "ap_CS_fsm", "SubInst" : "grp_bigint_math_bigint_zero_fu_211"},
		{"State" : "ap_ST_st7_fsm_6", "FSM" : "ap_CS_fsm", "SubInst" : "grp_bigint_math_bigint_zero_fu_211"},
		{"State" : "ap_ST_st21_fsm_20", "FSM" : "ap_CS_fsm", "SubInst" : "grp_bigint_math_bigint_zero_fu_211"},
		{"State" : "ap_ST_st2_fsm_1", "FSM" : "ap_CS_fsm", "SubInst" : "grp_bigint_math_bigint_zero_fu_217"},
		{"State" : "ap_ST_st7_fsm_6", "FSM" : "ap_CS_fsm", "SubInst" : "grp_bigint_math_bigint_zero_fu_217"}],
		"SubBlockPort" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bigint_math_bigint_mul_1_fu_179.sum_U", "Parent" : "65", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bigint_math_bigint_mul_1_fu_179.tempA_U", "Parent" : "65", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bigint_math_bigint_mul_1_fu_179.tempB_U", "Parent" : "65", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bigint_math_bigint_mul_1_fu_179.grp_bigint_math_bigint_add_1_fu_204", "Parent" : "65", "Child" : ["70", "71", "72", "73"], "CDFG" : "bigint_math_bigint_add_1", "VariableLatency" : "1", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "ProcessNetwork" : "0", "Combinational" : "0", "ControlExist" : "1",
		"Port" : [
		{"Name" : "out_r", "Type" : "Memory", "Direction" : "IO", "BlockSignal" : [], "SubConnect" : [
			{"SubInst" : "grp_bigint_math_bigint_zero_fu_176", "Port" : "in_r"}]}, 
		{"Name" : "b", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}],
		"WaitState" : [
		{"State" : "ap_ST_st2_fsm_1", "FSM" : "ap_CS_fsm", "SubInst" : "grp_bigint_math_bigint_zero_fu_176"},
		{"State" : "ap_ST_st7_fsm_6", "FSM" : "ap_CS_fsm", "SubInst" : "grp_bigint_math_bigint_zero_fu_176"},
		{"State" : "ap_ST_st2_fsm_1", "FSM" : "ap_CS_fsm", "SubInst" : "grp_bigint_math_bigint_zero_fu_182"}],
		"SubBlockPort" : []},
	{"Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_bigint_math_bigint_mul_1_fu_179.grp_bigint_math_bigint_add_1_fu_204.tempA_U", "Parent" : "69", "Child" : []},
	{"Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_bigint_math_bigint_mul_1_fu_179.grp_bigint_math_bigint_add_1_fu_204.tempB_U", "Parent" : "69", "Child" : []},
	{"Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_bigint_math_bigint_mul_1_fu_179.grp_bigint_math_bigint_add_1_fu_204.grp_bigint_math_bigint_zero_fu_176", "Parent" : "69", "Child" : [], "CDFG" : "bigint_math_bigint_zero", "VariableLatency" : "1", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "ProcessNetwork" : "0", "Combinational" : "0", "ControlExist" : "1",
		"Port" : [
		{"Name" : "in_r", "Type" : "Memory", "Direction" : "O", "BlockSignal" : [], "SubConnect" : []}],
		"WaitState" : [],
		"SubBlockPort" : []},
	{"Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_bigint_math_bigint_mul_1_fu_179.grp_bigint_math_bigint_add_1_fu_204.grp_bigint_math_bigint_zero_fu_182", "Parent" : "69", "Child" : [], "CDFG" : "bigint_math_bigint_zero", "VariableLatency" : "1", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "ProcessNetwork" : "0", "Combinational" : "0", "ControlExist" : "1",
		"Port" : [
		{"Name" : "in_r", "Type" : "Memory", "Direction" : "O", "BlockSignal" : [], "SubConnect" : []}],
		"WaitState" : [],
		"SubBlockPort" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bigint_math_bigint_mul_1_fu_179.grp_bigint_math_bigint_zero_fu_211", "Parent" : "65", "Child" : [], "CDFG" : "bigint_math_bigint_zero", "VariableLatency" : "1", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "ProcessNetwork" : "0", "Combinational" : "0", "ControlExist" : "1",
		"Port" : [
		{"Name" : "in_r", "Type" : "Memory", "Direction" : "O", "BlockSignal" : [], "SubConnect" : []}],
		"WaitState" : [],
		"SubBlockPort" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bigint_math_bigint_mul_1_fu_179.grp_bigint_math_bigint_zero_fu_217", "Parent" : "65", "Child" : [], "CDFG" : "bigint_math_bigint_zero", "VariableLatency" : "1", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "ProcessNetwork" : "0", "Combinational" : "0", "ControlExist" : "1",
		"Port" : [
		{"Name" : "in_r", "Type" : "Memory", "Direction" : "O", "BlockSignal" : [], "SubConnect" : []}],
		"WaitState" : [],
		"SubBlockPort" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_bigint_math_bigint_rightshift_fu_185", "Parent" : "0", "Child" : [], "CDFG" : "bigint_math_bigint_rightshift", "VariableLatency" : "1", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "ProcessNetwork" : "0", "Combinational" : "0", "ControlExist" : "1",
		"Port" : [
		{"Name" : "out_r", "Type" : "Memory", "Direction" : "IO", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "a", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}],
		"WaitState" : [],
		"SubBlockPort" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_bigint_math_bigint_compare_fu_191", "Parent" : "0", "Child" : ["78"], "CDFG" : "bigint_math_bigint_compare", "VariableLatency" : "1", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "ProcessNetwork" : "0", "Combinational" : "0", "ControlExist" : "1",
		"Port" : [
		{"Name" : "a", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "b", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}],
		"WaitState" : [],
		"SubBlockPort" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bigint_math_bigint_compare_fu_191.state_U", "Parent" : "77", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_bigint_math_bigint_copy_fu_198", "Parent" : "0", "Child" : [], "CDFG" : "bigint_math_bigint_copy", "VariableLatency" : "1", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "ProcessNetwork" : "0", "Combinational" : "0", "ControlExist" : "1",
		"Port" : [
		{"Name" : "to_r", "Type" : "Memory", "Direction" : "O", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "from", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}],
		"WaitState" : [],
		"SubBlockPort" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_bigint_math_bigint_copy_fu_205", "Parent" : "0", "Child" : [], "CDFG" : "bigint_math_bigint_copy", "VariableLatency" : "1", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "ProcessNetwork" : "0", "Combinational" : "0", "ControlExist" : "1",
		"Port" : [
		{"Name" : "to_r", "Type" : "Memory", "Direction" : "O", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "from", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}],
		"WaitState" : [],
		"SubBlockPort" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_bigint_math_bigint_copy_fu_212", "Parent" : "0", "Child" : [], "CDFG" : "bigint_math_bigint_copy", "VariableLatency" : "1", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "ProcessNetwork" : "0", "Combinational" : "0", "ControlExist" : "1",
		"Port" : [
		{"Name" : "to_r", "Type" : "Memory", "Direction" : "O", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "from", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}],
		"WaitState" : [],
		"SubBlockPort" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_bigint_math_bigint_zero_fu_220", "Parent" : "0", "Child" : [], "CDFG" : "bigint_math_bigint_zero", "VariableLatency" : "1", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "ProcessNetwork" : "0", "Combinational" : "0", "ControlExist" : "1",
		"Port" : [
		{"Name" : "in_r", "Type" : "Memory", "Direction" : "O", "BlockSignal" : [], "SubConnect" : []}],
		"WaitState" : [],
		"SubBlockPort" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_bigint_math_bigint_zero_fu_226", "Parent" : "0", "Child" : [], "CDFG" : "bigint_math_bigint_zero", "VariableLatency" : "1", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "ProcessNetwork" : "0", "Combinational" : "0", "ControlExist" : "1",
		"Port" : [
		{"Name" : "in_r", "Type" : "Memory", "Direction" : "O", "BlockSignal" : [], "SubConnect" : []}],
		"WaitState" : [],
		"SubBlockPort" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_bigint_math_bigint_zero_fu_232", "Parent" : "0", "Child" : [], "CDFG" : "bigint_math_bigint_zero", "VariableLatency" : "1", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "ProcessNetwork" : "0", "Combinational" : "0", "ControlExist" : "1",
		"Port" : [
		{"Name" : "in_r", "Type" : "Memory", "Direction" : "O", "BlockSignal" : [], "SubConnect" : []}],
		"WaitState" : [],
		"SubBlockPort" : []}]}

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "4294967295", "Max" : "4294967295"}
]}

set Spec2ImplPortList { 
	out_r { ap_memory {  { out_r_address0 mem_address 1 8 }  { out_r_ce0 mem_ce 1 1 }  { out_r_we0 mem_we 1 1 }  { out_r_d0 mem_din 1 8 } } }
	base_r { ap_memory {  { base_r_address0 mem_address 1 8 }  { base_r_ce0 mem_ce 1 1 }  { base_r_q0 mem_dout 0 8 } } }
	exp { ap_memory {  { exp_address0 mem_address 1 8 }  { exp_ce0 mem_ce 1 1 }  { exp_q0 mem_dout 0 8 } } }
	mod_r { ap_memory {  { mod_r_address0 mem_address 1 8 }  { mod_r_ce0 mem_ce 1 1 }  { mod_r_q0 mem_dout 0 8 } } }
}
