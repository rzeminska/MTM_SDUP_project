
y
Command: %s
1870*	planAhead2D
0open_checkpoint hdmi_inout_bd_wrapper_placed.dcp2default:defaultZ12-2866h px? 
^

Starting %s Task
103*constraints2#
open_checkpoint2default:defaultZ18-103h px? 
?

%s
*constraints2r
^Time (s): cpu = 00:00:00 ; elapsed = 00:00:00.037 . Memory (MB): peak = 301.125 ; gain = 0.0002default:defaulth px? 
V
Loading part %s157*device2#
xc7z020clg400-12default:defaultZ21-403h px? 
h
-Analyzing %s Unisim elements for replacement
17*netlist2
12362default:defaultZ29-17h px? 
j
2Unisim Transformation completed in %s CPU seconds
28*netlist2
12default:defaultZ29-28h px? 
x
Netlist was created with %s %s291*project2
Vivado2default:default2
2019.12default:defaultZ1-479h px? 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px? 
L
*Restoring timing data from binary archive.264*timingZ38-478h px? 
F
$Binary timing data restore complete.265*timingZ38-479h px? 
L
*Restoring constraints from binary archive.481*projectZ1-856h px? 
E
#Binary constraint restore complete.478*projectZ1-853h px? 
?
Reading XDEF placement.
206*designutilsZ20-206h px? 
D
Reading placer database...
1602*designutilsZ20-1892h px? 
=
Reading XDEF routing.
207*designutilsZ20-207h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2$
Read XDEF File: 2default:default2
00:00:012default:default2
00:00:012default:default2
1395.4412default:default2
5.2032default:defaultZ17-268h px? 
?
7Restored from archive | CPU: %s secs | Memory: %s MB |
1612*designutils2
1.0000002default:default2
0.0000002default:defaultZ20-1924h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common20
Finished XDEF File Restore: 2default:default2
00:00:012default:default2
00:00:012default:default2
1395.4412default:default2
5.2032default:defaultZ17-268h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:012default:default2 
00:00:00.0242default:default2
1395.4412default:default2
0.0002default:defaultZ17-268h px? 
?
!Unisim Transformation Summary:
%s111*project2?
?  A total of 624 instances were transformed.
  CFGLUT5 => CFGLUT5 (SRLC32E, SRL16E): 608 instances
  RAM32M => RAM32M (RAMD32, RAMD32, RAMD32, RAMD32, RAMD32, RAMD32, RAMS32, RAMS32): 16 instances
2default:defaultZ1-111h px? 
?
'Checkpoint was created with %s build %s378*project2+
Vivado v2019.1 (64-bit)2default:default2
25520522default:defaultZ1-604h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2%
open_checkpoint: 2default:default2
00:00:262default:default2
00:00:272default:default2
1395.4412default:default2
1094.3162default:defaultZ17-268h px? 
Q
Command: %s
53*	vivadotcl2 
route_design2default:defaultZ4-113h px? 
?
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2"
Implementation2default:default2
xc7z0202default:defaultZ17-347h px? 
?
0Got license for feature '%s' and/or device '%s'
310*common2"
Implementation2default:default2
xc7z0202default:defaultZ17-349h px? 
p
,Running DRC as a precondition to command %s
22*	vivadotcl2 
route_design2default:defaultZ4-22h px? 
P
Running DRC with %s threads
24*drc2
22default:defaultZ23-27h px? 
?
?PLL_adv_ClkFrequency_div_no_dclk: The computed value 2500.000 MHz (CLKIN1_PERIOD, net clk_out1) for the VCO operating frequency of the PLLE2_ADV site %s (cell %s) falls outside the operating range of the PLL VCO frequency for this device (800.000 - 1600.000 MHz). The computed value is (CLKFBOUT_MULT_F * 1000 / (CLKINx_PERIOD * DIVCLK_DIVIDE)). Please adjust either the input period CLKINx_PERIOD (4.000000), multiplication factor CLKFBOUT_MULT_F (10) or the division factor DIVCLK_DIVIDE (1), in order to achieve a VCO frequency within the rated operating range for this device.%s*DRC2J
 "4
PLLE2_ADV_X1Y0
PLLE2_ADV_X1Y02default:default2default:default2?
 "?
Ohdmi_inout_bd_i/rgb2dvi_0/U0/ClockGenInternal.ClockGenX/GenPLL.DVI_ClkGenerator	Ohdmi_inout_bd_i/rgb2dvi_0/U0/ClockGenInternal.ClockGenX/GenPLL.DVI_ClkGenerator2default:default2default:default2Q
 9DRC|Physical Configuration|Physical design rule|PLLE2_ADV2default:default8ZPDRC-43h px? 
V
DRC finished with %s
79*	vivadotcl2
1 Errors2default:defaultZ4-198h px? 
e
BPlease refer to the DRC report (report_drc) for more information.
80*	vivadotclZ4-199h px? 
M
+Error(s) found during DRC. Router not run.
16*	vivadotclZ4-16h px? 
Z
Releasing license: %s
83*common2"
Implementation2default:defaultZ17-83h px? 
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
162default:default2
02default:default2
02default:default2
22default:defaultZ4-41h px? 
N

%s failed
30*	vivadotcl2 
route_design2default:defaultZ4-43h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
route_design: 2default:default2
00:01:022default:default2
00:01:012default:default2
1481.7462default:default2
86.3052default:defaultZ17-268h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0222default:default2
1481.7462default:default2
0.0002default:defaultZ17-268h px? 
H
&Writing timing data to binary archive.266*timingZ38-480h px? 
D
Writing placer database...
1603*designutilsZ20-1893h px? 
=
Writing XDEF routing.
211*designutilsZ20-211h px? 
J
#Writing XDEF routing logical nets.
209*designutilsZ20-209h px? 
J
#Writing XDEF routing special nets.
210*designutilsZ20-210h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2)
Write XDEF Complete: 2default:default2
00:00:072default:default2
00:00:022default:default2
1481.7462default:default2
0.0002default:defaultZ17-268h px? 
?
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2?
tC:/Users/DELL/Desktop/repoBETSS/MTM_SDUP_project/BETSS/hdmi_inout.runs/impl_1/hdmi_inout_bd_wrapper_routed_error.dcp2default:defaultZ17-1381h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2&
write_checkpoint: 2default:default2
00:00:102default:default2
00:00:062default:default2
1481.7462default:default2
0.0002default:defaultZ17-268h px? 
?
Exiting %s at %s...
206*common2
Vivado2default:default2,
Fri May 13 19:23:38 20222default:defaultZ17-206h px? 


End Record