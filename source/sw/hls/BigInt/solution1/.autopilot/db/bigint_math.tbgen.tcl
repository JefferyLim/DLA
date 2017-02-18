set C_TypeInfoList {{ 
"bigint_math" : [[], { "return": [[], "void"]} , [{"ExternC" : 0}], [ {"a": [[], {"array": [ {"scalar": "unsigned char"}, [128]]}] }, {"b": [[], {"array": [ {"scalar": "unsigned char"}, [128]]}] }, {"output": [[],{ "pointer": "0"}] }],[],""], 
"0": [ "uint2048", {"typedef": [[[],"1"],""]}], 
"1": [ "ap_uint<2048>", {"hls_type": {"ap_uint": [[[[], {"scalar": { "int": 2048}}]],""]}}]
}}
set moduleName bigint_math
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set C_modelName {bigint_math}
set C_modelType { void 0 }
set C_modelArgList {
	{ a int 8 regular {axi_slave 0}  }
	{ b int 8 regular {axi_slave 0}  }
	{ output_V int 2048 regular {axi_slave 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "a", "interface" : "axi_slave", "bundle":"PERIPH_BUS","type":"ap_memory","bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "a","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 127,"step" : 1}]}]}], "offset" : {"in":128}, "offset_end" : {"in":255}} , 
 	{ "Name" : "b", "interface" : "axi_slave", "bundle":"PERIPH_BUS","type":"ap_memory","bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "b","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 127,"step" : 1}]}]}], "offset" : {"in":256}, "offset_end" : {"in":383}} , 
 	{ "Name" : "output_V", "interface" : "axi_slave", "bundle":"PERIPH_BUS","type":"ap_vld","bitwidth" : 2048, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":2047,"cElement": [{"cName": "output.V","cData": "uint2048","bit_use": { "low": 0,"up": 2047},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}], "offset" : {"out":384}, "offset_end" : {"out":643}} ]}
# RTL Port declarations: 
set portNum 20
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ s_axi_PERIPH_BUS_AWVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_PERIPH_BUS_AWREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_PERIPH_BUS_AWADDR sc_in sc_lv 10 signal -1 } 
	{ s_axi_PERIPH_BUS_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_PERIPH_BUS_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_PERIPH_BUS_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_PERIPH_BUS_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_PERIPH_BUS_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_PERIPH_BUS_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_PERIPH_BUS_ARADDR sc_in sc_lv 10 signal -1 } 
	{ s_axi_PERIPH_BUS_RVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_PERIPH_BUS_RREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_PERIPH_BUS_RDATA sc_out sc_lv 32 signal -1 } 
	{ s_axi_PERIPH_BUS_RRESP sc_out sc_lv 2 signal -1 } 
	{ s_axi_PERIPH_BUS_BVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_PERIPH_BUS_BREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_PERIPH_BUS_BRESP sc_out sc_lv 2 signal -1 } 
	{ interrupt sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "s_axi_PERIPH_BUS_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "PERIPH_BUS", "role": "AWADDR" },"address":[{"name":"bigint_math","role":"start","value":"0","valid_bit":"0"},{"name":"bigint_math","role":"continue","value":"0","valid_bit":"4"},{"name":"bigint_math","role":"auto_start","value":"0","valid_bit":"7"},{"name":"a","role":"data","value":"128"},{"name":"b","role":"data","value":"256"}] },
	{ "name": "s_axi_PERIPH_BUS_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "PERIPH_BUS", "role": "AWVALID" } },
	{ "name": "s_axi_PERIPH_BUS_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "PERIPH_BUS", "role": "AWREADY" } },
	{ "name": "s_axi_PERIPH_BUS_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "PERIPH_BUS", "role": "WVALID" } },
	{ "name": "s_axi_PERIPH_BUS_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "PERIPH_BUS", "role": "WREADY" } },
	{ "name": "s_axi_PERIPH_BUS_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "PERIPH_BUS", "role": "WDATA" } },
	{ "name": "s_axi_PERIPH_BUS_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "PERIPH_BUS", "role": "WSTRB" } },
	{ "name": "s_axi_PERIPH_BUS_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "PERIPH_BUS", "role": "ARADDR" },"address":[{"name":"bigint_math","role":"start","value":"0","valid_bit":"0"},{"name":"bigint_math","role":"done","value":"0","valid_bit":"1"},{"name":"bigint_math","role":"idle","value":"0","valid_bit":"2"},{"name":"bigint_math","role":"ready","value":"0","valid_bit":"3"},{"name":"bigint_math","role":"auto_start","value":"0","valid_bit":"7"},{"name":"output_V","role":"data","value":"384"}, {"name":"output_V","role":"valid","value":"640","valid_bit":"0"}] },
	{ "name": "s_axi_PERIPH_BUS_ARVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "PERIPH_BUS", "role": "ARVALID" } },
	{ "name": "s_axi_PERIPH_BUS_ARREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "PERIPH_BUS", "role": "ARREADY" } },
	{ "name": "s_axi_PERIPH_BUS_RVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "PERIPH_BUS", "role": "RVALID" } },
	{ "name": "s_axi_PERIPH_BUS_RREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "PERIPH_BUS", "role": "RREADY" } },
	{ "name": "s_axi_PERIPH_BUS_RDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "PERIPH_BUS", "role": "RDATA" } },
	{ "name": "s_axi_PERIPH_BUS_RRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "PERIPH_BUS", "role": "RRESP" } },
	{ "name": "s_axi_PERIPH_BUS_BVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "PERIPH_BUS", "role": "BVALID" } },
	{ "name": "s_axi_PERIPH_BUS_BREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "PERIPH_BUS", "role": "BREADY" } },
	{ "name": "s_axi_PERIPH_BUS_BRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "PERIPH_BUS", "role": "BRESP" } },
	{ "name": "interrupt", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "PERIPH_BUS", "role": "interrupt" } }, 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"], "CDFG" : "bigint_math", "VariableLatency" : "1", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "ProcessNetwork" : "0", "Combinational" : "0", "ControlExist" : "1",
		"Port" : [
		{"Name" : "a", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "b", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "output_V", "Type" : "Vld", "Direction" : "O", "BlockSignal" : [], "SubConnect" : []}],
		"WaitState" : [],
		"SubBlockPort" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.bigint_math_PERIPH_BUS_s_axi_U", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.c_U", "Parent" : "0", "Child" : []}]}

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "4295081860", "Max" : "4295081860"}
	, {"Name" : "Interval", "Min" : "114565", "Max" : "114565"}
]}

set Spec2ImplPortList { 
}

set busDeadlockParameterList { 
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
