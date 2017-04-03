set moduleName bigint_math_bigint_copy
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set C_modelName {bigint_math_bigint_copy}
set C_modelType { void 0 }
set C_modelArgList {
	{ to_r int 8 regular {array 256 { 0 } 0 1 }  }
	{ from int 8 regular {array 256 { 1 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "to_r", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "from", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 13
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ to_r_address0 sc_out sc_lv 8 signal 0 } 
	{ to_r_ce0 sc_out sc_logic 1 signal 0 } 
	{ to_r_we0 sc_out sc_logic 1 signal 0 } 
	{ to_r_d0 sc_out sc_lv 8 signal 0 } 
	{ from_address0 sc_out sc_lv 8 signal 1 } 
	{ from_ce0 sc_out sc_logic 1 signal 1 } 
	{ from_q0 sc_in sc_lv 8 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "to_r_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "to_r", "role": "address0" }} , 
 	{ "name": "to_r_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "to_r", "role": "ce0" }} , 
 	{ "name": "to_r_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "to_r", "role": "we0" }} , 
 	{ "name": "to_r_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "to_r", "role": "d0" }} , 
 	{ "name": "from_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "from", "role": "address0" }} , 
 	{ "name": "from_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "from", "role": "ce0" }} , 
 	{ "name": "from_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "from", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : [], "CDFG" : "bigint_math_bigint_copy", "VariableLatency" : "1", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "ProcessNetwork" : "0", "Combinational" : "0", "ControlExist" : "1",
		"Port" : [
		{"Name" : "to_r", "Type" : "Memory", "Direction" : "O", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "from", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}],
		"WaitState" : [],
		"SubBlockPort" : []}]}

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "513", "Max" : "513"}
	, {"Name" : "Interval", "Min" : "513", "Max" : "513"}
]}

set Spec2ImplPortList { 
	to_r { ap_memory {  { to_r_address0 mem_address 1 8 }  { to_r_ce0 mem_ce 1 1 }  { to_r_we0 mem_we 1 1 }  { to_r_d0 mem_din 1 8 } } }
	from { ap_memory {  { from_address0 mem_address 1 8 }  { from_ce0 mem_ce 1 1 }  { from_q0 mem_dout 0 8 } } }
}
