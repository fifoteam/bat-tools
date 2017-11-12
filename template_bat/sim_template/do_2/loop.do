##-------------------------------------------------------------------------------------------------
##
##  -- ģ������     : loop.do�����������
##              1)  : loop.do���ε���flow.do��ѭ������ÿ��testcase
##
##              2)  : modelsim ��ִ����һ������֮��Ż�ִ����һ������
##
##-------------------------------------------------------------------------------------------------


##	===============================================================================================
##	���޸�������Ϣ
##	===============================================================================================
##	-------------------------------------------------------------------------------------
##	�Ƿ���Ҫ�Զ�����
##	1.�Զ���������
##	-------------------------------------------------------------------------------------
set AUTO_CHECK	0

##	-------------------------------------------------------------------------------------
##	�Ƿ���ҪGUIģʽ
##	1.�����GUIģʽ����Ϊ1��
##	2.�����������ģʽ����Ϊ0��
##	-------------------------------------------------------------------------------------
set GUI_MODE	0


##	-------------------------------------------------------------------------------------
##	������ testcase ����֮ǰ����ȡ�����飬�����ظ�����
##	-------------------------------------------------------------------------------------
if {[info exists TC_ARRAY]} {
	unset TC_ARRAY
}

##	-------------------------------------------------------------------------------------
##	���� testcase ����
##	-------------------------------------------------------------------------------------

set TC_ARRAY(00)  testcase_00
#set TC_ARRAY(01)  testcase_0a0
#set TC_ARRAY(02)  testcase_0a1
#set TC_ARRAY(03)  testcase_0a2
#set TC_ARRAY(04)  testcase_0a3
#set TC_ARRAY(05)  testcase_0a4
#set TC_ARRAY(06)  testcase_0a5
#set TC_ARRAY(07)  testcase_0a6
#set TC_ARRAY(08)  testcase_0a7
#set TC_ARRAY(09)  testcase_0a8
#set TC_ARRAY(10)  testcase_0a9
#set TC_ARRAY(11)  testcase_0b0
#set TC_ARRAY(12)  testcase_0b1
#set TC_ARRAY(13)  testcase_0b2
#set TC_ARRAY(14)  testcase_0b3
#set TC_ARRAY(15)  testcase_0b4
#set TC_ARRAY(16)  testcase_0b5
#set TC_ARRAY(17)  testcase_0b6
#set TC_ARRAY(18)  testcase_0b7
#set TC_ARRAY(19)  testcase_0b8
#set TC_ARRAY(20)  testcase_0b9
set TC_ARRAY(21)  testcase_0d
set TC_ARRAY(22)  testcase_0e
set TC_ARRAY(23)  testcase_01
set TC_ARRAY(24)  testcase_1b
set TC_ARRAY(25)  testcase_1c
set TC_ARRAY(26)  testcase_1d
set TC_ARRAY(27)  testcase_1e
set TC_ARRAY(28)  testcase_02
set TC_ARRAY(29)  testcase_2a
set TC_ARRAY(30)  testcase_2b
set TC_ARRAY(31)  testcase_03
set TC_ARRAY(32)  testcase_04
set TC_ARRAY(33)  testcase_05
set TC_ARRAY(34)  testcase_06
#set TC_ARRAY(35)  testcase_07
#set TC_ARRAY(36)  testcase_08
#set TC_ARRAY(37)  testcase_09
set TC_ARRAY(38)  testcase_10
set TC_ARRAY(39)  testcase_11
set TC_ARRAY(40)  testcase_12
set TC_ARRAY(41)  testcase_13
set TC_ARRAY(42)  testcase_14
set TC_ARRAY(43)  testcase_15
set TC_ARRAY(44)  testcase_16
set TC_ARRAY(45)  testcase_17
set TC_ARRAY(46)  testcase_18
set TC_ARRAY(47)  testcase_19
set TC_ARRAY(48)  testcase_20
set TC_ARRAY(49)  testcase_21
set TC_ARRAY(50)  testcase_22
set TC_ARRAY(51)  testcase_23
set TC_ARRAY(52)  testcase_24
set TC_ARRAY(53)  testcase_25
set TC_ARRAY(54)  testcase_26
set TC_ARRAY(55)  testcase_27
set TC_ARRAY(56)  testcase_28
set TC_ARRAY(57)  testcase_29
set TC_ARRAY(58)  testcase_30
set TC_ARRAY(59)  testcase_31
set TC_ARRAY(60)  testcase_32
set TC_ARRAY(61)  testcase_33
set TC_ARRAY(62)  testcase_34
set TC_ARRAY(63)  testcase_40
set TC_ARRAY(64)  testcase_41
set TC_ARRAY(65)  testcase_42
set TC_ARRAY(66)  testcase_43
set TC_ARRAY(67)  testcase_44
#set TC_ARRAY(68)  testcase_070
#set TC_ARRAY(69)  testcase_071
#set TC_ARRAY(70)  testcase_072
#set TC_ARRAY(71)  testcase_073
#set TC_ARRAY(72)  testcase_074
#set TC_ARRAY(73)  testcase_075
#set TC_ARRAY(74)  testcase_076
#set TC_ARRAY(75)  testcase_077
#set TC_ARRAY(76)  testcase_078
#set TC_ARRAY(77)  testcase_079
#set TC_ARRAY(78)  testcase_080
#set TC_ARRAY(79)  testcase_081
#set TC_ARRAY(80)  testcase_082
#set TC_ARRAY(81)  testcase_083
#set TC_ARRAY(82)  testcase_084
#set TC_ARRAY(83)  testcase_085
#set TC_ARRAY(84)  testcase_086
#set TC_ARRAY(85)  testcase_087
#set TC_ARRAY(86)  testcase_088
#set TC_ARRAY(87)  testcase_089
#set TC_ARRAY(88)  testcase_090
#set TC_ARRAY(89)  testcase_091
#set TC_ARRAY(90)  testcase_092
#set TC_ARRAY(91)  testcase_093
#set TC_ARRAY(92)  testcase_094
#set TC_ARRAY(93)  testcase_095
#set TC_ARRAY(94)  testcase_096
#set TC_ARRAY(95)  testcase_097
#set TC_ARRAY(96)  testcase_098
#set TC_ARRAY(97)  testcase_099
set TC_ARRAY(98)  testcase_211
set TC_ARRAY(99)  testcase_212


##	===============================================================================================
##	���²�Ҫ�޸�
##	===============================================================================================
##	-------------------------------------------------------------------------------------
##	����LOOPΪ1����ʾ��LOOPģʽ������
##	-------------------------------------------------------------------------------------
set LOOP	1

##	-------------------------------------------------------------------------------------
##	LOOPģʽ�£���ǰcompile������Ҫ��ѭ����ʱ���ٴ�compile
##	-------------------------------------------------------------------------------------
do compile.do

##	-------------------------------------------------------------------------------------
##	ѭ������ÿ��testcase
##	-------------------------------------------------------------------------------------
foreach testcase_name [array names TC_ARRAY] {
	set TESTCASE	$TC_ARRAY($testcase_name)
	set timeval [clock format [clock seconds] -format %Y-%m-%d_%H:%M:%S]
	echo	"flow.do $TC_ARRAY($testcase_name) start.The time is $timeval******"
	do flow.do
	set timeval [clock format [clock seconds] -format %Y-%m-%d_%H:%M:%S]
	echo	"flow.do $TC_ARRAY($testcase_name) end.The time is $timeval******"
}

##	-------------------------------------------------------------------------------------
##	ȡ�����������������������flow.do������Ҫ����������
##	-------------------------------------------------------------------------------------
unset LOOP
unset GUI_MODE
##	-------------------------------------------------------------------------------------
##	�Զ���鹦��
##	-------------------------------------------------------------------------------------
if {$AUTO_CHECK == 1} {
	set file_path [pwd]
	set file_name "/transcript"
	append file_path $file_name
	eval exec select_line.exe -f $file_path  -s \"# flow.do\" \"# monitor\"
}
