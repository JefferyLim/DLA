
Q
Command: %s
53*	vivadotcl2 
route_design2default:defaultZ4-113h px� 
�
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2"
Implementation2default:default2
xc7z0202default:defaultZ17-347h px� 
�
0Got license for feature '%s' and/or device '%s'
310*common2"
Implementation2default:default2
xc7z0202default:defaultZ17-349h px� 
p
,Running DRC as a precondition to command %s
22*	vivadotcl2 
route_design2default:defaultZ4-22h px� 
P
Running DRC with %s threads
24*drc2
42default:defaultZ23-27h px� 
�
Rule violation (%s) %s - %s
20*drc2
PLIO-72default:default2B
.Placement Constraints Check for IO constraints2default:default2�
�An IO Bus FIXED_IO_mio[53:0] with more than one IO standard is found. Components associated with this bus are: LVCMOS18 (FIXED_IO_mio[53], FIXED_IO_mio[52], FIXED_IO_mio[51], FIXED_IO_mio[50], FIXED_IO_mio[49], FIXED_IO_mio[48], FIXED_IO_mio[47], FIXED_IO_mio[46], FIXED_IO_mio[45], FIXED_IO_mio[44], FIXED_IO_mio[43], FIXED_IO_mio[42], FIXED_IO_mio[41], FIXED_IO_mio[40], FIXED_IO_mio[39] (the first 15 of 38 listed)); LVCMOS33 (FIXED_IO_mio[15], FIXED_IO_mio[14], FIXED_IO_mio[13], FIXED_IO_mio[12], FIXED_IO_mio[11], FIXED_IO_mio[10], FIXED_IO_mio[9], FIXED_IO_mio[8], FIXED_IO_mio[7], FIXED_IO_mio[6], FIXED_IO_mio[5], FIXED_IO_mio[4], FIXED_IO_mio[3], FIXED_IO_mio[2], FIXED_IO_mio[1] (the first 15 of 16 listed)); 2default:defaultZ23-20h px� 
b
DRC finished with %s
79*	vivadotcl2(
0 Errors, 1 Warnings2default:defaultZ4-198h px� 
e
BPlease refer to the DRC report (report_drc) for more information.
80*	vivadotclZ4-199h px� 
V

Starting %s Task
103*constraints2
Routing2default:defaultZ18-103h px� 
y
BMultithreading enabled for route_design using a maximum of %s CPUs97*route2
42default:defaultZ35-254h px� 
p

Phase %s%s
101*constraints2
1 2default:default2#
Build RT Design2default:defaultZ18-101h px� 
C
.Phase 1 Build RT Design | Checksum: 17132cad1
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:01:04 ; elapsed = 00:00:49 . Memory (MB): peak = 2005.598 ; gain = 0.000 ; free physical = 124 ; free virtual = 101272default:defaulth px� 
v

Phase %s%s
101*constraints2
2 2default:default2)
Router Initialization2default:defaultZ18-101h px� 
o

Phase %s%s
101*constraints2
2.1 2default:default2 
Create Timer2default:defaultZ18-101h px� 
B
-Phase 2.1 Create Timer | Checksum: 17132cad1
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:01:05 ; elapsed = 00:00:50 . Memory (MB): peak = 2005.598 ; gain = 0.000 ; free physical = 157 ; free virtual = 101272default:defaulth px� 
{

Phase %s%s
101*constraints2
2.2 2default:default2,
Fix Topology Constraints2default:defaultZ18-101h px� 
N
9Phase 2.2 Fix Topology Constraints | Checksum: 17132cad1
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:01:05 ; elapsed = 00:00:50 . Memory (MB): peak = 2005.598 ; gain = 0.000 ; free physical = 153 ; free virtual = 101242default:defaulth px� 
t

Phase %s%s
101*constraints2
2.3 2default:default2%
Pre Route Cleanup2default:defaultZ18-101h px� 
G
2Phase 2.3 Pre Route Cleanup | Checksum: 17132cad1
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:01:05 ; elapsed = 00:00:50 . Memory (MB): peak = 2005.598 ; gain = 0.000 ; free physical = 153 ; free virtual = 101242default:defaulth px� 
p

Phase %s%s
101*constraints2
2.4 2default:default2!
Update Timing2default:defaultZ18-101h px� 
C
.Phase 2.4 Update Timing | Checksum: 149ce57bc
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:01:15 ; elapsed = 00:00:56 . Memory (MB): peak = 2005.598 ; gain = 0.000 ; free physical = 133 ; free virtual = 100932default:defaulth px� 
�
Intermediate Timing Summary %s164*route2J
6| WNS=0.131  | TNS=0.000  | WHS=-0.165 | THS=-90.770|
2default:defaultZ35-416h px� 
I
4Phase 2 Router Initialization | Checksum: 1f9f560d4
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:01:19 ; elapsed = 00:00:58 . Memory (MB): peak = 2005.598 ; gain = 0.000 ; free physical = 123 ; free virtual = 100782default:defaulth px� 
p

Phase %s%s
101*constraints2
3 2default:default2#
Initial Routing2default:defaultZ18-101h px� 
C
.Phase 3 Initial Routing | Checksum: 1873fc6b8
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:01:26 ; elapsed = 00:01:01 . Memory (MB): peak = 2005.598 ; gain = 0.000 ; free physical = 117 ; free virtual = 100742default:defaulth px� 
s

Phase %s%s
101*constraints2
4 2default:default2&
Rip-up And Reroute2default:defaultZ18-101h px� 
u

Phase %s%s
101*constraints2
4.1 2default:default2&
Global Iteration 02default:defaultZ18-101h px� 
r

Phase %s%s
101*constraints2
4.1.1 2default:default2!
Update Timing2default:defaultZ18-101h px� 
E
0Phase 4.1.1 Update Timing | Checksum: 1209f5deb
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:01:49 ; elapsed = 00:01:10 . Memory (MB): peak = 2005.598 ; gain = 0.000 ; free physical = 134 ; free virtual = 100702default:defaulth px� 
�
Intermediate Timing Summary %s164*route2J
6| WNS=-0.497 | TNS=-0.968 | WHS=N/A    | THS=N/A    |
2default:defaultZ35-416h px� 
v

Phase %s%s
101*constraints2
4.1.2 2default:default2%
GlobIterForTiming2default:defaultZ18-101h px� 
t

Phase %s%s
101*constraints2
4.1.2.1 2default:default2!
Update Timing2default:defaultZ18-101h px� 
G
2Phase 4.1.2.1 Update Timing | Checksum: 191ccc739
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:01:50 ; elapsed = 00:01:11 . Memory (MB): peak = 2005.598 ; gain = 0.000 ; free physical = 134 ; free virtual = 100702default:defaulth px� 
u

Phase %s%s
101*constraints2
4.1.2.2 2default:default2"
Fast Budgeting2default:defaultZ18-101h px� 
H
3Phase 4.1.2.2 Fast Budgeting | Checksum: 1f1bd0697
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:01:51 ; elapsed = 00:01:12 . Memory (MB): peak = 2005.598 ; gain = 0.000 ; free physical = 139 ; free virtual = 100692default:defaulth px� 
I
4Phase 4.1.2 GlobIterForTiming | Checksum: 1e6d45b90
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:01:51 ; elapsed = 00:01:13 . Memory (MB): peak = 2005.598 ; gain = 0.000 ; free physical = 140 ; free virtual = 100702default:defaulth px� 
H
3Phase 4.1 Global Iteration 0 | Checksum: 1e6d45b90
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:01:51 ; elapsed = 00:01:13 . Memory (MB): peak = 2005.598 ; gain = 0.000 ; free physical = 140 ; free virtual = 100702default:defaulth px� 
u

Phase %s%s
101*constraints2
4.2 2default:default2&
Global Iteration 12default:defaultZ18-101h px� 
r

Phase %s%s
101*constraints2
4.2.1 2default:default2!
Update Timing2default:defaultZ18-101h px� 
E
0Phase 4.2.1 Update Timing | Checksum: 226cf9f5a
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:02:00 ; elapsed = 00:01:19 . Memory (MB): peak = 2005.598 ; gain = 0.000 ; free physical = 141 ; free virtual = 100702default:defaulth px� 
�
Intermediate Timing Summary %s164*route2J
6| WNS=-0.247 | TNS=-0.538 | WHS=N/A    | THS=N/A    |
2default:defaultZ35-416h px� 
v

Phase %s%s
101*constraints2
4.2.2 2default:default2%
GlobIterForTiming2default:defaultZ18-101h px� 
t

Phase %s%s
101*constraints2
4.2.2.1 2default:default2!
Update Timing2default:defaultZ18-101h px� 
G
2Phase 4.2.2.1 Update Timing | Checksum: 239f25517
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:02:01 ; elapsed = 00:01:19 . Memory (MB): peak = 2005.598 ; gain = 0.000 ; free physical = 141 ; free virtual = 100702default:defaulth px� 
u

Phase %s%s
101*constraints2
4.2.2.2 2default:default2"
Fast Budgeting2default:defaultZ18-101h px� 
H
3Phase 4.2.2.2 Fast Budgeting | Checksum: 25459eeef
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:02:02 ; elapsed = 00:01:20 . Memory (MB): peak = 2005.598 ; gain = 0.000 ; free physical = 140 ; free virtual = 100702default:defaulth px� 
I
4Phase 4.2.2 GlobIterForTiming | Checksum: 1cd9b3c36
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:02:02 ; elapsed = 00:01:20 . Memory (MB): peak = 2005.598 ; gain = 0.000 ; free physical = 140 ; free virtual = 100702default:defaulth px� 
H
3Phase 4.2 Global Iteration 1 | Checksum: 1cd9b3c36
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:02:02 ; elapsed = 00:01:20 . Memory (MB): peak = 2005.598 ; gain = 0.000 ; free physical = 140 ; free virtual = 100702default:defaulth px� 
u

Phase %s%s
101*constraints2
4.3 2default:default2&
Global Iteration 22default:defaultZ18-101h px� 
r

Phase %s%s
101*constraints2
4.3.1 2default:default2!
Update Timing2default:defaultZ18-101h px� 
E
0Phase 4.3.1 Update Timing | Checksum: 22df26e08
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:02:07 ; elapsed = 00:01:23 . Memory (MB): peak = 2005.598 ; gain = 0.000 ; free physical = 140 ; free virtual = 100692default:defaulth px� 
�
Intermediate Timing Summary %s164*route2J
6| WNS=-0.149 | TNS=-0.245 | WHS=N/A    | THS=N/A    |
2default:defaultZ35-416h px� 
v

Phase %s%s
101*constraints2
4.3.2 2default:default2%
GlobIterForTiming2default:defaultZ18-101h px� 
t

Phase %s%s
101*constraints2
4.3.2.1 2default:default2!
Update Timing2default:defaultZ18-101h px� 
G
2Phase 4.3.2.1 Update Timing | Checksum: 1963e2e6b
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:02:08 ; elapsed = 00:01:24 . Memory (MB): peak = 2005.598 ; gain = 0.000 ; free physical = 140 ; free virtual = 100692default:defaulth px� 
u

Phase %s%s
101*constraints2
4.3.2.2 2default:default2"
Fast Budgeting2default:defaultZ18-101h px� 
H
3Phase 4.3.2.2 Fast Budgeting | Checksum: 1bda19d5f
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:02:09 ; elapsed = 00:01:25 . Memory (MB): peak = 2005.598 ; gain = 0.000 ; free physical = 139 ; free virtual = 100682default:defaulth px� 
I
4Phase 4.3.2 GlobIterForTiming | Checksum: 1a8e0091d
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:02:09 ; elapsed = 00:01:25 . Memory (MB): peak = 2005.598 ; gain = 0.000 ; free physical = 139 ; free virtual = 100682default:defaulth px� 
H
3Phase 4.3 Global Iteration 2 | Checksum: 1a8e0091d
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:02:09 ; elapsed = 00:01:25 . Memory (MB): peak = 2005.598 ; gain = 0.000 ; free physical = 140 ; free virtual = 100702default:defaulth px� 
u

Phase %s%s
101*constraints2
4.4 2default:default2&
Global Iteration 32default:defaultZ18-101h px� 
r

Phase %s%s
101*constraints2
4.4.1 2default:default2!
Update Timing2default:defaultZ18-101h px� 
D
/Phase 4.4.1 Update Timing | Checksum: f79faa32
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:02:27 ; elapsed = 00:01:39 . Memory (MB): peak = 2005.598 ; gain = 0.000 ; free physical = 140 ; free virtual = 100692default:defaulth px� 
�
Intermediate Timing Summary %s164*route2J
6| WNS=-0.131 | TNS=-0.240 | WHS=N/A    | THS=N/A    |
2default:defaultZ35-416h px� 
G
2Phase 4.4 Global Iteration 3 | Checksum: c3968e00
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:02:27 ; elapsed = 00:01:39 . Memory (MB): peak = 2005.598 ; gain = 0.000 ; free physical = 139 ; free virtual = 100682default:defaulth px� 
E
0Phase 4 Rip-up And Reroute | Checksum: c3968e00
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:02:27 ; elapsed = 00:01:39 . Memory (MB): peak = 2005.598 ; gain = 0.000 ; free physical = 139 ; free virtual = 100682default:defaulth px� 
|

Phase %s%s
101*constraints2
5 2default:default2/
Delay and Skew Optimization2default:defaultZ18-101h px� 
p

Phase %s%s
101*constraints2
5.1 2default:default2!
Delay CleanUp2default:defaultZ18-101h px� 
r

Phase %s%s
101*constraints2
5.1.1 2default:default2!
Update Timing2default:defaultZ18-101h px� 
E
0Phase 5.1.1 Update Timing | Checksum: 16b3f3146
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:02:29 ; elapsed = 00:01:40 . Memory (MB): peak = 2005.598 ; gain = 0.000 ; free physical = 140 ; free virtual = 100692default:defaulth px� 
�
Intermediate Timing Summary %s164*route2J
6| WNS=-0.131 | TNS=-0.131 | WHS=N/A    | THS=N/A    |
2default:defaultZ35-416h px� 
C
.Phase 5.1 Delay CleanUp | Checksum: 1acbbd998
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:02:30 ; elapsed = 00:01:40 . Memory (MB): peak = 2005.598 ; gain = 0.000 ; free physical = 140 ; free virtual = 100692default:defaulth px� 
z

Phase %s%s
101*constraints2
5.2 2default:default2+
Clock Skew Optimization2default:defaultZ18-101h px� 
M
8Phase 5.2 Clock Skew Optimization | Checksum: 1acbbd998
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:02:30 ; elapsed = 00:01:40 . Memory (MB): peak = 2005.598 ; gain = 0.000 ; free physical = 140 ; free virtual = 100692default:defaulth px� 
O
:Phase 5 Delay and Skew Optimization | Checksum: 1acbbd998
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:02:30 ; elapsed = 00:01:40 . Memory (MB): peak = 2005.598 ; gain = 0.000 ; free physical = 140 ; free virtual = 100692default:defaulth px� 
n

Phase %s%s
101*constraints2
6 2default:default2!
Post Hold Fix2default:defaultZ18-101h px� 
p

Phase %s%s
101*constraints2
6.1 2default:default2!
Hold Fix Iter2default:defaultZ18-101h px� 
r

Phase %s%s
101*constraints2
6.1.1 2default:default2!
Update Timing2default:defaultZ18-101h px� 
E
0Phase 6.1.1 Update Timing | Checksum: 18f778f56
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:02:32 ; elapsed = 00:01:41 . Memory (MB): peak = 2005.598 ; gain = 0.000 ; free physical = 141 ; free virtual = 100702default:defaulth px� 
�
Intermediate Timing Summary %s164*route2J
6| WNS=-0.130 | TNS=-0.130 | WHS=0.033  | THS=0.000  |
2default:defaultZ35-416h px� 
C
.Phase 6.1 Hold Fix Iter | Checksum: 1a64d29fe
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:02:32 ; elapsed = 00:01:42 . Memory (MB): peak = 2005.598 ; gain = 0.000 ; free physical = 141 ; free virtual = 100702default:defaulth px� 
A
,Phase 6 Post Hold Fix | Checksum: 1a64d29fe
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:02:32 ; elapsed = 00:01:42 . Memory (MB): peak = 2005.598 ; gain = 0.000 ; free physical = 141 ; free virtual = 100702default:defaulth px� 
o

Phase %s%s
101*constraints2
7 2default:default2"
Route finalize2default:defaultZ18-101h px� 
B
-Phase 7 Route finalize | Checksum: 2261b8d6f
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:02:33 ; elapsed = 00:01:42 . Memory (MB): peak = 2005.598 ; gain = 0.000 ; free physical = 141 ; free virtual = 100702default:defaulth px� 
v

Phase %s%s
101*constraints2
8 2default:default2)
Verifying routed nets2default:defaultZ18-101h px� 
I
4Phase 8 Verifying routed nets | Checksum: 2261b8d6f
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:02:33 ; elapsed = 00:01:42 . Memory (MB): peak = 2005.598 ; gain = 0.000 ; free physical = 141 ; free virtual = 100702default:defaulth px� 
r

Phase %s%s
101*constraints2
9 2default:default2%
Depositing Routes2default:defaultZ18-101h px� 
E
0Phase 9 Depositing Routes | Checksum: 2497d1d27
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:02:35 ; elapsed = 00:01:44 . Memory (MB): peak = 2005.598 ; gain = 0.000 ; free physical = 140 ; free virtual = 100692default:defaulth px� 
t

Phase %s%s
101*constraints2
10 2default:default2&
Post Router Timing2default:defaultZ18-101h px� 
�
Estimated Timing Summary %s
57*route2J
6| WNS=-0.130 | TNS=-0.130 | WHS=0.033  | THS=0.000  |
2default:defaultZ35-57h px� 
B
!Router estimated timing not met.
128*routeZ35-328h px� 
G
2Phase 10 Post Router Timing | Checksum: 2497d1d27
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:02:35 ; elapsed = 00:01:44 . Memory (MB): peak = 2005.598 ; gain = 0.000 ; free physical = 140 ; free virtual = 100692default:defaulth px� 
=
Router Completed Successfully
16*routeZ35-16h px� 
�

%s
*constraints2�
�Time (s): cpu = 00:02:35 ; elapsed = 00:01:44 . Memory (MB): peak = 2005.598 ; gain = 0.000 ; free physical = 140 ; free virtual = 100692default:defaulth px� 
Z
Releasing license: %s
83*common2"
Implementation2default:defaultZ17-83h px� 
�
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
592default:default2
1042default:default2
1002default:default2
02default:defaultZ4-41h px� 
^
%s completed successfully
29*	vivadotcl2 
route_design2default:defaultZ4-42h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2"
route_design: 2default:default2
00:02:422default:default2
00:02:482default:default2
2005.5982default:default2
0.0002default:default2
2102default:default2
101312default:defaultZ17-722h px� 
D
Writing placer database...
1603*designutilsZ20-1893h px� 
=
Writing XDEF routing.
211*designutilsZ20-211h px� 
J
#Writing XDEF routing logical nets.
209*designutilsZ20-209h px� 
J
#Writing XDEF routing special nets.
210*designutilsZ20-210h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2)
Write XDEF Complete: 2default:default2
00:00:042default:default2
00:00:012default:default2
2005.5982default:default2
0.0002default:default2
1942default:default2
101332default:defaultZ17-722h px� 
P
Running DRC with %s threads
24*drc2
42default:defaultZ23-27h px� 
�
#The results of DRC are in file %s.
168*coretcl2�
T/home/linux/Documents/DLA/fw/vivado/zedboard/zedboard.runs/impl_1/top_drc_routed.rptT/home/linux/Documents/DLA/fw/vivado/zedboard/zedboard.runs/impl_1/top_drc_routed.rpt2default:default8Z2-168h px� 
r
UpdateTimingParams:%s.
91*timing29
% Speed grade: -1, Delay Type: min_max2default:defaultZ38-91h px� 
|
CMultithreading enabled for timing update using a maximum of %s CPUs155*timing2
42default:defaultZ38-191h px� 
�
rThe design failed to meet the timing requirements. Please see the %s report for details on the timing violations.
188*timing2"
timing summary2default:defaultZ38-282h px� 
K
,Running Vector-less Activity Propagation...
51*powerZ33-51h px� 
P
3
Finished Running Vector-less Activity Propagation
1*powerZ33-1h px� 


End Record