set C_TypeInfoList {{ 
"bigint_math" : [[], { "return": [[], "void"]} , [{"ExternC" : 0}], [ {"number1": [[],"0"] }, {"number2": [[],"0"] }, {"output": [[],{ "pointer": "0"}] }],[],""], 
"0": [ "uintMem", {"typedef": [[[],"1"],""]}], 
"1": [ "ap_uint<2048>", {"hls_type": {"ap_uint": [[[[], {"scalar": { "int": 2048}}]],""]}}]
}}
set moduleName bigint_math
set isCombinational 1
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set C_modelName {bigint_math}
set C_modelType { void 0 }
set C_modelArgList {
	{ number1_V int 2048 regular {axi_slave 0}  }
	{ number2_V int 2048 regular {axi_slave 0}  }
	{ output_V int 2048 regular {axi_slave 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "number1_V", "interface" : "axi_slave", "bundle":"PERIPH_BUS","type":"ap_none","bitwidth" : 2048, "direction" : "READONLY", "bitSlice":[{"low":0,"up":2047,"cElement": [{"cName": "number1.V","cData": "uint2048","bit_use": { "low": 0,"up": 2047},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}], "offset" : {"in":16}, "offset_end" : {"in":275}} , 
 	{ "Name" : "number2_V", "interface" : "axi_slave", "bundle":"PERIPH_BUS","type":"ap_none","bitwidth" : 2048, "direction" : "READONLY", "bitSlice":[{"low":0,"up":2047,"cElement": [{"cName": "number2.V","cData": "uint2048","bit_use": { "low": 0,"up": 2047},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}], "offset" : {"in":276}, "offset_end" : {"in":535}} , 
 	{ "Name" : "output_V", "interface" : "axi_slave", "bundle":"PERIPH_BUS","type":"ap_vld","bitwidth" : 2048, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":2047,"cElement": [{"cName": "output.V","cData": "uint2048","bit_use": { "low": 0,"up": 2047},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}], "offset" : {"out":536}, "offset_end" : {"out":795}} ]}
# RTL Port declarations: 
set portNum 20
set portList { 
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
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ interrupt sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "s_axi_PERIPH_BUS_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "PERIPH_BUS", "role": "AWADDR" },"address":[{"name":"bigint_math","role":"start","value":"0","valid_bit":"0"},{"name":"bigint_math","role":"continue","value":"0","valid_bit":"4"},{"name":"bigint_math","role":"auto_start","value":"0","valid_bit":"7"},{"name":"number1_V","role":"data","value":"16"},{"name":"number2_V","role":"data","value":"276"}] },
	{ "name": "s_axi_PERIPH_BUS_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "PERIPH_BUS", "role": "AWVALID" } },
	{ "name": "s_axi_PERIPH_BUS_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "PERIPH_BUS", "role": "AWREADY" } },
	{ "name": "s_axi_PERIPH_BUS_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "PERIPH_BUS", "role": "WVALID" } },
	{ "name": "s_axi_PERIPH_BUS_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "PERIPH_BUS", "role": "WREADY" } },
	{ "name": "s_axi_PERIPH_BUS_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "PERIPH_BUS", "role": "WDATA" } },
	{ "name": "s_axi_PERIPH_BUS_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "PERIPH_BUS", "role": "WSTRB" } },
	{ "name": "s_axi_PERIPH_BUS_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "PERIPH_BUS", "role": "ARADDR" },"address":[{"name":"bigint_math","role":"start","value":"0","valid_bit":"0"},{"name":"bigint_math","role":"done","value":"0","valid_bit":"1"},{"name":"bigint_math","role":"idle","value":"0","valid_bit":"2"},{"name":"bigint_math","role":"ready","value":"0","valid_bit":"3"},{"name":"bigint_math","role":"auto_start","value":"0","valid_bit":"7"},{"name":"output_V","role":"data","value":"536"}, {"name":"output_V","role":"valid","value":"792","valid_bit":"0"}] },
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
	{"Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"], "CDFG" : "bigint_math", "VariableLatency" : "0", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "ProcessNetwork" : "0", "Combinational" : "1", "ControlExist" : "1",
		"Port" : [
		{"Name" : "number1_V", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "number2_V", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "output_V", "Type" : "Vld", "Direction" : "O", "BlockSignal" : [], "SubConnect" : []}],
		"WaitState" : [],
		"SubBlockPort" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.bigint_math_PERIPH_BUS_s_axi_U", "Parent" : "0", "Child" : []}]}

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "0", "Max" : "0"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "1"}
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
