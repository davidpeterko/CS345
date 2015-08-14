{-# OPTIONS_GHC -w #-}
module StatefulParse where
import Prelude hiding (LT, GT, EQ, id)
import Data.Char
import CheckedStatefulMonad
import Lexer
import Operators

-- parser produced by Happy Version 1.19.0

data HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18
	= HappyTerminal (Token)
	| HappyErrorToken Int
	| HappyAbsSyn4 t4
	| HappyAbsSyn5 t5
	| HappyAbsSyn6 t6
	| HappyAbsSyn7 t7
	| HappyAbsSyn8 t8
	| HappyAbsSyn9 t9
	| HappyAbsSyn10 t10
	| HappyAbsSyn11 t11
	| HappyAbsSyn12 t12
	| HappyAbsSyn13 t13
	| HappyAbsSyn14 t14
	| HappyAbsSyn15 t15
	| HappyAbsSyn16 t16
	| HappyAbsSyn17 t17
	| HappyAbsSyn18 t18

action_0 (19) = happyShift action_12
action_0 (20) = happyShift action_13
action_0 (22) = happyShift action_14
action_0 (23) = happyShift action_15
action_0 (24) = happyShift action_16
action_0 (25) = happyShift action_17
action_0 (26) = happyShift action_18
action_0 (27) = happyShift action_19
action_0 (29) = happyShift action_20
action_0 (30) = happyShift action_21
action_0 (33) = happyShift action_22
action_0 (42) = happyShift action_23
action_0 (43) = happyShift action_24
action_0 (45) = happyShift action_25
action_0 (47) = happyShift action_26
action_0 (4) = happyGoto action_27
action_0 (5) = happyGoto action_28
action_0 (8) = happyGoto action_3
action_0 (10) = happyGoto action_4
action_0 (11) = happyGoto action_5
action_0 (12) = happyGoto action_6
action_0 (13) = happyGoto action_7
action_0 (14) = happyGoto action_8
action_0 (15) = happyGoto action_9
action_0 (16) = happyGoto action_10
action_0 (17) = happyGoto action_11
action_0 _ = happyFail

action_1 (19) = happyShift action_12
action_1 (20) = happyShift action_13
action_1 (22) = happyShift action_14
action_1 (23) = happyShift action_15
action_1 (24) = happyShift action_16
action_1 (25) = happyShift action_17
action_1 (26) = happyShift action_18
action_1 (27) = happyShift action_19
action_1 (29) = happyShift action_20
action_1 (30) = happyShift action_21
action_1 (33) = happyShift action_22
action_1 (42) = happyShift action_23
action_1 (43) = happyShift action_24
action_1 (45) = happyShift action_25
action_1 (47) = happyShift action_26
action_1 (5) = happyGoto action_2
action_1 (8) = happyGoto action_3
action_1 (10) = happyGoto action_4
action_1 (11) = happyGoto action_5
action_1 (12) = happyGoto action_6
action_1 (13) = happyGoto action_7
action_1 (14) = happyGoto action_8
action_1 (15) = happyGoto action_9
action_1 (16) = happyGoto action_10
action_1 (17) = happyGoto action_11
action_1 _ = happyFail

action_2 (28) = happyShift action_29
action_2 _ = happyFail

action_3 _ = happyReduce_8

action_4 _ = happyReduce_6

action_5 (31) = happyShift action_54
action_5 (44) = happyShift action_55
action_5 _ = happyReduce_16

action_6 (41) = happyShift action_53
action_6 _ = happyReduce_18

action_7 (36) = happyShift action_48
action_7 (37) = happyShift action_49
action_7 (38) = happyShift action_50
action_7 (39) = happyShift action_51
action_7 (40) = happyShift action_52
action_7 _ = happyReduce_20

action_8 (32) = happyShift action_46
action_8 (33) = happyShift action_47
action_8 _ = happyReduce_26

action_9 (34) = happyShift action_44
action_9 (35) = happyShift action_45
action_9 _ = happyReduce_29

action_10 _ = happyReduce_32

action_11 (45) = happyShift action_42
action_11 (49) = happyShift action_43
action_11 _ = happyReduce_37

action_12 (45) = happyShift action_41
action_12 _ = happyFail

action_13 (45) = happyShift action_40
action_13 _ = happyFail

action_14 _ = happyReduce_39

action_15 _ = happyReduce_40

action_16 (29) = happyShift action_39
action_16 _ = happyFail

action_17 (22) = happyShift action_14
action_17 (23) = happyShift action_15
action_17 (26) = happyShift action_18
action_17 (29) = happyShift action_20
action_17 (30) = happyShift action_21
action_17 (45) = happyShift action_25
action_17 (17) = happyGoto action_38
action_17 _ = happyFail

action_18 _ = happyReduce_41

action_19 (19) = happyShift action_12
action_19 (20) = happyShift action_13
action_19 (22) = happyShift action_14
action_19 (23) = happyShift action_15
action_19 (24) = happyShift action_16
action_19 (25) = happyShift action_17
action_19 (26) = happyShift action_18
action_19 (27) = happyShift action_19
action_19 (29) = happyShift action_20
action_19 (30) = happyShift action_21
action_19 (33) = happyShift action_22
action_19 (42) = happyShift action_23
action_19 (43) = happyShift action_24
action_19 (45) = happyShift action_25
action_19 (47) = happyShift action_26
action_19 (5) = happyGoto action_37
action_19 (8) = happyGoto action_3
action_19 (10) = happyGoto action_4
action_19 (11) = happyGoto action_5
action_19 (12) = happyGoto action_6
action_19 (13) = happyGoto action_7
action_19 (14) = happyGoto action_8
action_19 (15) = happyGoto action_9
action_19 (16) = happyGoto action_10
action_19 (17) = happyGoto action_11
action_19 _ = happyFail

action_20 _ = happyReduce_42

action_21 _ = happyReduce_38

action_22 (22) = happyShift action_14
action_22 (23) = happyShift action_15
action_22 (26) = happyShift action_18
action_22 (29) = happyShift action_20
action_22 (30) = happyShift action_21
action_22 (45) = happyShift action_25
action_22 (17) = happyGoto action_36
action_22 _ = happyFail

action_23 (22) = happyShift action_14
action_23 (23) = happyShift action_15
action_23 (26) = happyShift action_18
action_23 (29) = happyShift action_20
action_23 (30) = happyShift action_21
action_23 (45) = happyShift action_25
action_23 (17) = happyGoto action_35
action_23 _ = happyFail

action_24 (22) = happyShift action_14
action_24 (23) = happyShift action_15
action_24 (26) = happyShift action_18
action_24 (29) = happyShift action_20
action_24 (30) = happyShift action_21
action_24 (45) = happyShift action_25
action_24 (17) = happyGoto action_34
action_24 _ = happyFail

action_25 (19) = happyShift action_12
action_25 (20) = happyShift action_13
action_25 (22) = happyShift action_14
action_25 (23) = happyShift action_15
action_25 (24) = happyShift action_16
action_25 (25) = happyShift action_17
action_25 (26) = happyShift action_18
action_25 (27) = happyShift action_19
action_25 (29) = happyShift action_20
action_25 (30) = happyShift action_21
action_25 (33) = happyShift action_22
action_25 (42) = happyShift action_23
action_25 (43) = happyShift action_24
action_25 (45) = happyShift action_25
action_25 (47) = happyShift action_26
action_25 (4) = happyGoto action_33
action_25 (5) = happyGoto action_28
action_25 (8) = happyGoto action_3
action_25 (10) = happyGoto action_4
action_25 (11) = happyGoto action_5
action_25 (12) = happyGoto action_6
action_25 (13) = happyGoto action_7
action_25 (14) = happyGoto action_8
action_25 (15) = happyGoto action_9
action_25 (16) = happyGoto action_10
action_25 (17) = happyGoto action_11
action_25 _ = happyFail

action_26 (29) = happyShift action_32
action_26 (6) = happyGoto action_30
action_26 (7) = happyGoto action_31
action_26 _ = happyFail

action_27 (52) = happyAccept
action_27 _ = happyFail

action_28 (28) = happyShift action_29
action_28 _ = happyReduce_2

action_29 (19) = happyShift action_12
action_29 (20) = happyShift action_13
action_29 (22) = happyShift action_14
action_29 (23) = happyShift action_15
action_29 (24) = happyShift action_16
action_29 (25) = happyShift action_17
action_29 (26) = happyShift action_18
action_29 (27) = happyShift action_19
action_29 (29) = happyShift action_20
action_29 (30) = happyShift action_21
action_29 (33) = happyShift action_22
action_29 (42) = happyShift action_23
action_29 (43) = happyShift action_24
action_29 (45) = happyShift action_25
action_29 (47) = happyShift action_26
action_29 (4) = happyGoto action_79
action_29 (5) = happyGoto action_28
action_29 (8) = happyGoto action_3
action_29 (10) = happyGoto action_4
action_29 (11) = happyGoto action_5
action_29 (12) = happyGoto action_6
action_29 (13) = happyGoto action_7
action_29 (14) = happyGoto action_8
action_29 (15) = happyGoto action_9
action_29 (16) = happyGoto action_10
action_29 (17) = happyGoto action_11
action_29 _ = happyFail

action_30 (51) = happyShift action_78
action_30 _ = happyReduce_10

action_31 (48) = happyShift action_77
action_31 _ = happyFail

action_32 (50) = happyShift action_76
action_32 _ = happyFail

action_33 (46) = happyShift action_75
action_33 _ = happyFail

action_34 (45) = happyShift action_42
action_34 (49) = happyShift action_43
action_34 _ = happyReduce_35

action_35 (45) = happyShift action_42
action_35 (49) = happyShift action_43
action_35 _ = happyReduce_34

action_36 (45) = happyShift action_42
action_36 (49) = happyShift action_43
action_36 _ = happyReduce_33

action_37 _ = happyReduce_7

action_38 (45) = happyShift action_42
action_38 (49) = happyShift action_43
action_38 _ = happyReduce_36

action_39 (31) = happyShift action_74
action_39 _ = happyFail

action_40 (19) = happyShift action_12
action_40 (20) = happyShift action_13
action_40 (22) = happyShift action_14
action_40 (23) = happyShift action_15
action_40 (24) = happyShift action_16
action_40 (25) = happyShift action_17
action_40 (26) = happyShift action_18
action_40 (27) = happyShift action_19
action_40 (29) = happyShift action_20
action_40 (30) = happyShift action_21
action_40 (33) = happyShift action_22
action_40 (42) = happyShift action_23
action_40 (43) = happyShift action_24
action_40 (45) = happyShift action_25
action_40 (47) = happyShift action_26
action_40 (5) = happyGoto action_73
action_40 (8) = happyGoto action_3
action_40 (10) = happyGoto action_4
action_40 (11) = happyGoto action_5
action_40 (12) = happyGoto action_6
action_40 (13) = happyGoto action_7
action_40 (14) = happyGoto action_8
action_40 (15) = happyGoto action_9
action_40 (16) = happyGoto action_10
action_40 (17) = happyGoto action_11
action_40 _ = happyFail

action_41 (29) = happyShift action_72
action_41 (9) = happyGoto action_71
action_41 _ = happyReduce_14

action_42 (19) = happyShift action_12
action_42 (20) = happyShift action_13
action_42 (22) = happyShift action_14
action_42 (23) = happyShift action_15
action_42 (24) = happyShift action_16
action_42 (25) = happyShift action_17
action_42 (26) = happyShift action_18
action_42 (27) = happyShift action_19
action_42 (29) = happyShift action_20
action_42 (30) = happyShift action_21
action_42 (33) = happyShift action_22
action_42 (42) = happyShift action_23
action_42 (43) = happyShift action_24
action_42 (45) = happyShift action_25
action_42 (47) = happyShift action_26
action_42 (4) = happyGoto action_69
action_42 (5) = happyGoto action_28
action_42 (8) = happyGoto action_3
action_42 (10) = happyGoto action_4
action_42 (11) = happyGoto action_5
action_42 (12) = happyGoto action_6
action_42 (13) = happyGoto action_7
action_42 (14) = happyGoto action_8
action_42 (15) = happyGoto action_9
action_42 (16) = happyGoto action_10
action_42 (17) = happyGoto action_11
action_42 (18) = happyGoto action_70
action_42 _ = happyReduce_47

action_43 (29) = happyShift action_68
action_43 _ = happyFail

action_44 (22) = happyShift action_14
action_44 (23) = happyShift action_15
action_44 (25) = happyShift action_17
action_44 (26) = happyShift action_18
action_44 (29) = happyShift action_20
action_44 (30) = happyShift action_21
action_44 (33) = happyShift action_22
action_44 (42) = happyShift action_23
action_44 (43) = happyShift action_24
action_44 (45) = happyShift action_25
action_44 (16) = happyGoto action_67
action_44 (17) = happyGoto action_11
action_44 _ = happyFail

action_45 (22) = happyShift action_14
action_45 (23) = happyShift action_15
action_45 (25) = happyShift action_17
action_45 (26) = happyShift action_18
action_45 (29) = happyShift action_20
action_45 (30) = happyShift action_21
action_45 (33) = happyShift action_22
action_45 (42) = happyShift action_23
action_45 (43) = happyShift action_24
action_45 (45) = happyShift action_25
action_45 (16) = happyGoto action_66
action_45 (17) = happyGoto action_11
action_45 _ = happyFail

action_46 (22) = happyShift action_14
action_46 (23) = happyShift action_15
action_46 (25) = happyShift action_17
action_46 (26) = happyShift action_18
action_46 (29) = happyShift action_20
action_46 (30) = happyShift action_21
action_46 (33) = happyShift action_22
action_46 (42) = happyShift action_23
action_46 (43) = happyShift action_24
action_46 (45) = happyShift action_25
action_46 (15) = happyGoto action_65
action_46 (16) = happyGoto action_10
action_46 (17) = happyGoto action_11
action_46 _ = happyFail

action_47 (22) = happyShift action_14
action_47 (23) = happyShift action_15
action_47 (25) = happyShift action_17
action_47 (26) = happyShift action_18
action_47 (29) = happyShift action_20
action_47 (30) = happyShift action_21
action_47 (33) = happyShift action_22
action_47 (42) = happyShift action_23
action_47 (43) = happyShift action_24
action_47 (45) = happyShift action_25
action_47 (15) = happyGoto action_64
action_47 (16) = happyGoto action_10
action_47 (17) = happyGoto action_11
action_47 _ = happyFail

action_48 (22) = happyShift action_14
action_48 (23) = happyShift action_15
action_48 (25) = happyShift action_17
action_48 (26) = happyShift action_18
action_48 (29) = happyShift action_20
action_48 (30) = happyShift action_21
action_48 (33) = happyShift action_22
action_48 (42) = happyShift action_23
action_48 (43) = happyShift action_24
action_48 (45) = happyShift action_25
action_48 (14) = happyGoto action_63
action_48 (15) = happyGoto action_9
action_48 (16) = happyGoto action_10
action_48 (17) = happyGoto action_11
action_48 _ = happyFail

action_49 (22) = happyShift action_14
action_49 (23) = happyShift action_15
action_49 (25) = happyShift action_17
action_49 (26) = happyShift action_18
action_49 (29) = happyShift action_20
action_49 (30) = happyShift action_21
action_49 (33) = happyShift action_22
action_49 (42) = happyShift action_23
action_49 (43) = happyShift action_24
action_49 (45) = happyShift action_25
action_49 (14) = happyGoto action_62
action_49 (15) = happyGoto action_9
action_49 (16) = happyGoto action_10
action_49 (17) = happyGoto action_11
action_49 _ = happyFail

action_50 (22) = happyShift action_14
action_50 (23) = happyShift action_15
action_50 (25) = happyShift action_17
action_50 (26) = happyShift action_18
action_50 (29) = happyShift action_20
action_50 (30) = happyShift action_21
action_50 (33) = happyShift action_22
action_50 (42) = happyShift action_23
action_50 (43) = happyShift action_24
action_50 (45) = happyShift action_25
action_50 (14) = happyGoto action_61
action_50 (15) = happyGoto action_9
action_50 (16) = happyGoto action_10
action_50 (17) = happyGoto action_11
action_50 _ = happyFail

action_51 (22) = happyShift action_14
action_51 (23) = happyShift action_15
action_51 (25) = happyShift action_17
action_51 (26) = happyShift action_18
action_51 (29) = happyShift action_20
action_51 (30) = happyShift action_21
action_51 (33) = happyShift action_22
action_51 (42) = happyShift action_23
action_51 (43) = happyShift action_24
action_51 (45) = happyShift action_25
action_51 (14) = happyGoto action_60
action_51 (15) = happyGoto action_9
action_51 (16) = happyGoto action_10
action_51 (17) = happyGoto action_11
action_51 _ = happyFail

action_52 (22) = happyShift action_14
action_52 (23) = happyShift action_15
action_52 (25) = happyShift action_17
action_52 (26) = happyShift action_18
action_52 (29) = happyShift action_20
action_52 (30) = happyShift action_21
action_52 (33) = happyShift action_22
action_52 (42) = happyShift action_23
action_52 (43) = happyShift action_24
action_52 (45) = happyShift action_25
action_52 (14) = happyGoto action_59
action_52 (15) = happyGoto action_9
action_52 (16) = happyGoto action_10
action_52 (17) = happyGoto action_11
action_52 _ = happyFail

action_53 (22) = happyShift action_14
action_53 (23) = happyShift action_15
action_53 (25) = happyShift action_17
action_53 (26) = happyShift action_18
action_53 (29) = happyShift action_20
action_53 (30) = happyShift action_21
action_53 (33) = happyShift action_22
action_53 (42) = happyShift action_23
action_53 (43) = happyShift action_24
action_53 (45) = happyShift action_25
action_53 (13) = happyGoto action_58
action_53 (14) = happyGoto action_8
action_53 (15) = happyGoto action_9
action_53 (16) = happyGoto action_10
action_53 (17) = happyGoto action_11
action_53 _ = happyFail

action_54 (22) = happyShift action_14
action_54 (23) = happyShift action_15
action_54 (25) = happyShift action_17
action_54 (26) = happyShift action_18
action_54 (29) = happyShift action_20
action_54 (30) = happyShift action_21
action_54 (33) = happyShift action_22
action_54 (42) = happyShift action_23
action_54 (43) = happyShift action_24
action_54 (45) = happyShift action_25
action_54 (10) = happyGoto action_57
action_54 (11) = happyGoto action_5
action_54 (12) = happyGoto action_6
action_54 (13) = happyGoto action_7
action_54 (14) = happyGoto action_8
action_54 (15) = happyGoto action_9
action_54 (16) = happyGoto action_10
action_54 (17) = happyGoto action_11
action_54 _ = happyFail

action_55 (22) = happyShift action_14
action_55 (23) = happyShift action_15
action_55 (25) = happyShift action_17
action_55 (26) = happyShift action_18
action_55 (29) = happyShift action_20
action_55 (30) = happyShift action_21
action_55 (33) = happyShift action_22
action_55 (42) = happyShift action_23
action_55 (43) = happyShift action_24
action_55 (45) = happyShift action_25
action_55 (12) = happyGoto action_56
action_55 (13) = happyGoto action_7
action_55 (14) = happyGoto action_8
action_55 (15) = happyGoto action_9
action_55 (16) = happyGoto action_10
action_55 (17) = happyGoto action_11
action_55 _ = happyFail

action_56 (41) = happyShift action_53
action_56 _ = happyReduce_17

action_57 _ = happyReduce_15

action_58 (36) = happyShift action_48
action_58 (37) = happyShift action_49
action_58 (38) = happyShift action_50
action_58 (39) = happyShift action_51
action_58 (40) = happyShift action_52
action_58 _ = happyReduce_19

action_59 (32) = happyShift action_46
action_59 (33) = happyShift action_47
action_59 _ = happyReduce_21

action_60 (32) = happyShift action_46
action_60 (33) = happyShift action_47
action_60 _ = happyReduce_25

action_61 (32) = happyShift action_46
action_61 (33) = happyShift action_47
action_61 _ = happyReduce_24

action_62 (32) = happyShift action_46
action_62 (33) = happyShift action_47
action_62 _ = happyReduce_23

action_63 (32) = happyShift action_46
action_63 (33) = happyShift action_47
action_63 _ = happyReduce_22

action_64 (34) = happyShift action_44
action_64 (35) = happyShift action_45
action_64 _ = happyReduce_28

action_65 (34) = happyShift action_44
action_65 (35) = happyShift action_45
action_65 _ = happyReduce_27

action_66 _ = happyReduce_31

action_67 _ = happyReduce_30

action_68 _ = happyReduce_45

action_69 _ = happyReduce_46

action_70 (46) = happyShift action_85
action_70 _ = happyFail

action_71 (46) = happyShift action_84
action_71 _ = happyFail

action_72 _ = happyReduce_13

action_73 (46) = happyShift action_83
action_73 _ = happyFail

action_74 (19) = happyShift action_12
action_74 (20) = happyShift action_13
action_74 (22) = happyShift action_14
action_74 (23) = happyShift action_15
action_74 (24) = happyShift action_16
action_74 (25) = happyShift action_17
action_74 (26) = happyShift action_18
action_74 (27) = happyShift action_19
action_74 (29) = happyShift action_20
action_74 (30) = happyShift action_21
action_74 (33) = happyShift action_22
action_74 (42) = happyShift action_23
action_74 (43) = happyShift action_24
action_74 (45) = happyShift action_25
action_74 (47) = happyShift action_26
action_74 (5) = happyGoto action_82
action_74 (8) = happyGoto action_3
action_74 (10) = happyGoto action_4
action_74 (11) = happyGoto action_5
action_74 (12) = happyGoto action_6
action_74 (13) = happyGoto action_7
action_74 (14) = happyGoto action_8
action_74 (15) = happyGoto action_9
action_74 (16) = happyGoto action_10
action_74 (17) = happyGoto action_11
action_74 _ = happyFail

action_75 _ = happyReduce_43

action_76 (19) = happyShift action_12
action_76 (20) = happyShift action_13
action_76 (22) = happyShift action_14
action_76 (23) = happyShift action_15
action_76 (24) = happyShift action_16
action_76 (25) = happyShift action_17
action_76 (26) = happyShift action_18
action_76 (27) = happyShift action_19
action_76 (29) = happyShift action_20
action_76 (30) = happyShift action_21
action_76 (33) = happyShift action_22
action_76 (42) = happyShift action_23
action_76 (43) = happyShift action_24
action_76 (45) = happyShift action_25
action_76 (47) = happyShift action_26
action_76 (4) = happyGoto action_81
action_76 (5) = happyGoto action_28
action_76 (8) = happyGoto action_3
action_76 (10) = happyGoto action_4
action_76 (11) = happyGoto action_5
action_76 (12) = happyGoto action_6
action_76 (13) = happyGoto action_7
action_76 (14) = happyGoto action_8
action_76 (15) = happyGoto action_9
action_76 (16) = happyGoto action_10
action_76 (17) = happyGoto action_11
action_76 _ = happyFail

action_77 _ = happyReduce_12

action_78 (29) = happyShift action_32
action_78 (6) = happyGoto action_30
action_78 (7) = happyGoto action_80
action_78 _ = happyFail

action_79 _ = happyReduce_1

action_80 _ = happyReduce_11

action_81 _ = happyReduce_9

action_82 (28) = happyShift action_88
action_82 _ = happyFail

action_83 (47) = happyShift action_87
action_83 _ = happyFail

action_84 (47) = happyShift action_86
action_84 _ = happyFail

action_85 _ = happyReduce_44

action_86 (19) = happyShift action_12
action_86 (20) = happyShift action_13
action_86 (22) = happyShift action_14
action_86 (23) = happyShift action_15
action_86 (24) = happyShift action_16
action_86 (25) = happyShift action_17
action_86 (26) = happyShift action_18
action_86 (27) = happyShift action_19
action_86 (29) = happyShift action_20
action_86 (30) = happyShift action_21
action_86 (33) = happyShift action_22
action_86 (42) = happyShift action_23
action_86 (43) = happyShift action_24
action_86 (45) = happyShift action_25
action_86 (47) = happyShift action_26
action_86 (4) = happyGoto action_91
action_86 (5) = happyGoto action_28
action_86 (8) = happyGoto action_3
action_86 (10) = happyGoto action_4
action_86 (11) = happyGoto action_5
action_86 (12) = happyGoto action_6
action_86 (13) = happyGoto action_7
action_86 (14) = happyGoto action_8
action_86 (15) = happyGoto action_9
action_86 (16) = happyGoto action_10
action_86 (17) = happyGoto action_11
action_86 _ = happyFail

action_87 (19) = happyShift action_12
action_87 (20) = happyShift action_13
action_87 (22) = happyShift action_14
action_87 (23) = happyShift action_15
action_87 (24) = happyShift action_16
action_87 (25) = happyShift action_17
action_87 (26) = happyShift action_18
action_87 (27) = happyShift action_19
action_87 (29) = happyShift action_20
action_87 (30) = happyShift action_21
action_87 (33) = happyShift action_22
action_87 (42) = happyShift action_23
action_87 (43) = happyShift action_24
action_87 (45) = happyShift action_25
action_87 (47) = happyShift action_26
action_87 (4) = happyGoto action_90
action_87 (5) = happyGoto action_28
action_87 (8) = happyGoto action_3
action_87 (10) = happyGoto action_4
action_87 (11) = happyGoto action_5
action_87 (12) = happyGoto action_6
action_87 (13) = happyGoto action_7
action_87 (14) = happyGoto action_8
action_87 (15) = happyGoto action_9
action_87 (16) = happyGoto action_10
action_87 (17) = happyGoto action_11
action_87 _ = happyFail

action_88 (19) = happyShift action_12
action_88 (20) = happyShift action_13
action_88 (22) = happyShift action_14
action_88 (23) = happyShift action_15
action_88 (24) = happyShift action_16
action_88 (25) = happyShift action_17
action_88 (26) = happyShift action_18
action_88 (27) = happyShift action_19
action_88 (29) = happyShift action_20
action_88 (30) = happyShift action_21
action_88 (33) = happyShift action_22
action_88 (42) = happyShift action_23
action_88 (43) = happyShift action_24
action_88 (45) = happyShift action_25
action_88 (47) = happyShift action_26
action_88 (4) = happyGoto action_89
action_88 (5) = happyGoto action_28
action_88 (8) = happyGoto action_3
action_88 (10) = happyGoto action_4
action_88 (11) = happyGoto action_5
action_88 (12) = happyGoto action_6
action_88 (13) = happyGoto action_7
action_88 (14) = happyGoto action_8
action_88 (15) = happyGoto action_9
action_88 (16) = happyGoto action_10
action_88 (17) = happyGoto action_11
action_88 _ = happyFail

action_89 _ = happyReduce_4

action_90 (48) = happyShift action_93
action_90 _ = happyFail

action_91 (48) = happyShift action_92
action_91 _ = happyFail

action_92 _ = happyReduce_3

action_93 (21) = happyShift action_94
action_93 _ = happyFail

action_94 (47) = happyShift action_95
action_94 _ = happyFail

action_95 (19) = happyShift action_12
action_95 (20) = happyShift action_13
action_95 (22) = happyShift action_14
action_95 (23) = happyShift action_15
action_95 (24) = happyShift action_16
action_95 (25) = happyShift action_17
action_95 (26) = happyShift action_18
action_95 (27) = happyShift action_19
action_95 (29) = happyShift action_20
action_95 (30) = happyShift action_21
action_95 (33) = happyShift action_22
action_95 (42) = happyShift action_23
action_95 (43) = happyShift action_24
action_95 (45) = happyShift action_25
action_95 (47) = happyShift action_26
action_95 (4) = happyGoto action_96
action_95 (5) = happyGoto action_28
action_95 (8) = happyGoto action_3
action_95 (10) = happyGoto action_4
action_95 (11) = happyGoto action_5
action_95 (12) = happyGoto action_6
action_95 (13) = happyGoto action_7
action_95 (14) = happyGoto action_8
action_95 (15) = happyGoto action_9
action_95 (16) = happyGoto action_10
action_95 (17) = happyGoto action_11
action_95 _ = happyFail

action_96 (48) = happyShift action_97
action_96 _ = happyFail

action_97 _ = happyReduce_5

happyReduce_1 = happySpecReduce_3  4 happyReduction_1
happyReduction_1 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn4
		 (Seq happy_var_1 happy_var_3
	)
happyReduction_1 _ _ _  = notHappyAtAll 

happyReduce_2 = happySpecReduce_1  4 happyReduction_2
happyReduction_2 (HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn4
		 (happy_var_1
	)
happyReduction_2 _  = notHappyAtAll 

happyReduce_3 = happyReduce 7 5 happyReduction_3
happyReduction_3 (_ `HappyStk`
	(HappyAbsSyn4  happy_var_6) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn9  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn5
		 (Function happy_var_3 happy_var_6
	) `HappyStk` happyRest

happyReduce_4 = happyReduce 6 5 happyReduction_4
happyReduction_4 ((HappyAbsSyn4  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn5  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenIdent happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn5
		 (Declare happy_var_2 happy_var_4 happy_var_6
	) `HappyStk` happyRest

happyReduce_5 = happyReduce 11 5 happyReduction_5
happyReduction_5 (_ `HappyStk`
	(HappyAbsSyn4  happy_var_10) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_6) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn5  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn5
		 (If happy_var_3 happy_var_6 happy_var_10
	) `HappyStk` happyRest

happyReduce_6 = happySpecReduce_1  5 happyReduction_6
happyReduction_6 (HappyAbsSyn10  happy_var_1)
	 =  HappyAbsSyn5
		 (happy_var_1
	)
happyReduction_6 _  = notHappyAtAll 

happyReduce_7 = happySpecReduce_2  5 happyReduction_7
happyReduction_7 (HappyAbsSyn5  happy_var_2)
	_
	 =  HappyAbsSyn5
		 (ReturnExp happy_var_2
	)
happyReduction_7 _ _  = notHappyAtAll 

happyReduce_8 = happySpecReduce_1  5 happyReduction_8
happyReduction_8 (HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn5
		 (ObjectExp happy_var_1
	)
happyReduction_8 _  = notHappyAtAll 

happyReduce_9 = happySpecReduce_3  6 happyReduction_9
happyReduction_9 (HappyAbsSyn4  happy_var_3)
	_
	(HappyTerminal (TokenIdent happy_var_1))
	 =  HappyAbsSyn6
		 ((happy_var_1, happy_var_3)
	)
happyReduction_9 _ _ _  = notHappyAtAll 

happyReduce_10 = happySpecReduce_1  7 happyReduction_10
happyReduction_10 (HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn7
		 ([happy_var_1]
	)
happyReduction_10 _  = notHappyAtAll 

happyReduce_11 = happySpecReduce_3  7 happyReduction_11
happyReduction_11 (HappyAbsSyn7  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn7
		 (happy_var_1 : happy_var_3
	)
happyReduction_11 _ _ _  = notHappyAtAll 

happyReduce_12 = happySpecReduce_3  8 happyReduction_12
happyReduction_12 _
	(HappyAbsSyn7  happy_var_2)
	_
	 =  HappyAbsSyn8
		 (happy_var_2
	)
happyReduction_12 _ _ _  = notHappyAtAll 

happyReduce_13 = happySpecReduce_1  9 happyReduction_13
happyReduction_13 (HappyTerminal (TokenIdent happy_var_1))
	 =  HappyAbsSyn9
		 (happy_var_1
	)
happyReduction_13 _  = notHappyAtAll 

happyReduce_14 = happySpecReduce_0  9 happyReduction_14
happyReduction_14  =  HappyAbsSyn9
		 ("_"
	)

happyReduce_15 = happySpecReduce_3  10 happyReduction_15
happyReduction_15 (HappyAbsSyn10  happy_var_3)
	_
	(HappyAbsSyn11  happy_var_1)
	 =  HappyAbsSyn10
		 (Assign happy_var_1 happy_var_3
	)
happyReduction_15 _ _ _  = notHappyAtAll 

happyReduce_16 = happySpecReduce_1  10 happyReduction_16
happyReduction_16 (HappyAbsSyn11  happy_var_1)
	 =  HappyAbsSyn10
		 (happy_var_1
	)
happyReduction_16 _  = notHappyAtAll 

happyReduce_17 = happySpecReduce_3  11 happyReduction_17
happyReduction_17 (HappyAbsSyn12  happy_var_3)
	_
	(HappyAbsSyn11  happy_var_1)
	 =  HappyAbsSyn11
		 (Binary Or happy_var_1 happy_var_3
	)
happyReduction_17 _ _ _  = notHappyAtAll 

happyReduce_18 = happySpecReduce_1  11 happyReduction_18
happyReduction_18 (HappyAbsSyn12  happy_var_1)
	 =  HappyAbsSyn11
		 (happy_var_1
	)
happyReduction_18 _  = notHappyAtAll 

happyReduce_19 = happySpecReduce_3  12 happyReduction_19
happyReduction_19 (HappyAbsSyn13  happy_var_3)
	_
	(HappyAbsSyn12  happy_var_1)
	 =  HappyAbsSyn12
		 (Binary And happy_var_1 happy_var_3
	)
happyReduction_19 _ _ _  = notHappyAtAll 

happyReduce_20 = happySpecReduce_1  12 happyReduction_20
happyReduction_20 (HappyAbsSyn13  happy_var_1)
	 =  HappyAbsSyn12
		 (happy_var_1
	)
happyReduction_20 _  = notHappyAtAll 

happyReduce_21 = happySpecReduce_3  13 happyReduction_21
happyReduction_21 (HappyAbsSyn14  happy_var_3)
	_
	(HappyAbsSyn13  happy_var_1)
	 =  HappyAbsSyn13
		 (Binary EQ happy_var_1 happy_var_3
	)
happyReduction_21 _ _ _  = notHappyAtAll 

happyReduce_22 = happySpecReduce_3  13 happyReduction_22
happyReduction_22 (HappyAbsSyn14  happy_var_3)
	_
	(HappyAbsSyn13  happy_var_1)
	 =  HappyAbsSyn13
		 (Binary LT happy_var_1 happy_var_3
	)
happyReduction_22 _ _ _  = notHappyAtAll 

happyReduce_23 = happySpecReduce_3  13 happyReduction_23
happyReduction_23 (HappyAbsSyn14  happy_var_3)
	_
	(HappyAbsSyn13  happy_var_1)
	 =  HappyAbsSyn13
		 (Binary GT happy_var_1 happy_var_3
	)
happyReduction_23 _ _ _  = notHappyAtAll 

happyReduce_24 = happySpecReduce_3  13 happyReduction_24
happyReduction_24 (HappyAbsSyn14  happy_var_3)
	_
	(HappyAbsSyn13  happy_var_1)
	 =  HappyAbsSyn13
		 (Binary LE happy_var_1 happy_var_3
	)
happyReduction_24 _ _ _  = notHappyAtAll 

happyReduce_25 = happySpecReduce_3  13 happyReduction_25
happyReduction_25 (HappyAbsSyn14  happy_var_3)
	_
	(HappyAbsSyn13  happy_var_1)
	 =  HappyAbsSyn13
		 (Binary GE happy_var_1 happy_var_3
	)
happyReduction_25 _ _ _  = notHappyAtAll 

happyReduce_26 = happySpecReduce_1  13 happyReduction_26
happyReduction_26 (HappyAbsSyn14  happy_var_1)
	 =  HappyAbsSyn13
		 (happy_var_1
	)
happyReduction_26 _  = notHappyAtAll 

happyReduce_27 = happySpecReduce_3  14 happyReduction_27
happyReduction_27 (HappyAbsSyn15  happy_var_3)
	_
	(HappyAbsSyn14  happy_var_1)
	 =  HappyAbsSyn14
		 (Binary Add happy_var_1 happy_var_3
	)
happyReduction_27 _ _ _  = notHappyAtAll 

happyReduce_28 = happySpecReduce_3  14 happyReduction_28
happyReduction_28 (HappyAbsSyn15  happy_var_3)
	_
	(HappyAbsSyn14  happy_var_1)
	 =  HappyAbsSyn14
		 (Binary Sub happy_var_1 happy_var_3
	)
happyReduction_28 _ _ _  = notHappyAtAll 

happyReduce_29 = happySpecReduce_1  14 happyReduction_29
happyReduction_29 (HappyAbsSyn15  happy_var_1)
	 =  HappyAbsSyn14
		 (happy_var_1
	)
happyReduction_29 _  = notHappyAtAll 

happyReduce_30 = happySpecReduce_3  15 happyReduction_30
happyReduction_30 (HappyAbsSyn16  happy_var_3)
	_
	(HappyAbsSyn15  happy_var_1)
	 =  HappyAbsSyn15
		 (Binary Mul happy_var_1 happy_var_3
	)
happyReduction_30 _ _ _  = notHappyAtAll 

happyReduce_31 = happySpecReduce_3  15 happyReduction_31
happyReduction_31 (HappyAbsSyn16  happy_var_3)
	_
	(HappyAbsSyn15  happy_var_1)
	 =  HappyAbsSyn15
		 (Binary Div happy_var_1 happy_var_3
	)
happyReduction_31 _ _ _  = notHappyAtAll 

happyReduce_32 = happySpecReduce_1  15 happyReduction_32
happyReduction_32 (HappyAbsSyn16  happy_var_1)
	 =  HappyAbsSyn15
		 (happy_var_1
	)
happyReduction_32 _  = notHappyAtAll 

happyReduce_33 = happySpecReduce_2  16 happyReduction_33
happyReduction_33 (HappyAbsSyn17  happy_var_2)
	_
	 =  HappyAbsSyn16
		 (Unary Neg happy_var_2
	)
happyReduction_33 _ _  = notHappyAtAll 

happyReduce_34 = happySpecReduce_2  16 happyReduction_34
happyReduction_34 (HappyAbsSyn17  happy_var_2)
	_
	 =  HappyAbsSyn16
		 (Unary Not happy_var_2
	)
happyReduction_34 _ _  = notHappyAtAll 

happyReduce_35 = happySpecReduce_2  16 happyReduction_35
happyReduction_35 (HappyAbsSyn17  happy_var_2)
	_
	 =  HappyAbsSyn16
		 (Access happy_var_2
	)
happyReduction_35 _ _  = notHappyAtAll 

happyReduce_36 = happySpecReduce_2  16 happyReduction_36
happyReduction_36 (HappyAbsSyn17  happy_var_2)
	_
	 =  HappyAbsSyn16
		 (Mutable happy_var_2
	)
happyReduction_36 _ _  = notHappyAtAll 

happyReduce_37 = happySpecReduce_1  16 happyReduction_37
happyReduction_37 (HappyAbsSyn17  happy_var_1)
	 =  HappyAbsSyn16
		 (happy_var_1
	)
happyReduction_37 _  = notHappyAtAll 

happyReduce_38 = happySpecReduce_1  17 happyReduction_38
happyReduction_38 (HappyTerminal (Digits happy_var_1))
	 =  HappyAbsSyn17
		 (Literal (IntV happy_var_1)
	)
happyReduction_38 _  = notHappyAtAll 

happyReduce_39 = happySpecReduce_1  17 happyReduction_39
happyReduction_39 _
	 =  HappyAbsSyn17
		 (Literal (BoolV True)
	)

happyReduce_40 = happySpecReduce_1  17 happyReduction_40
happyReduction_40 _
	 =  HappyAbsSyn17
		 (Literal (BoolV False)
	)

happyReduce_41 = happySpecReduce_1  17 happyReduction_41
happyReduction_41 _
	 =  HappyAbsSyn17
		 (Literal Undefined
	)

happyReduce_42 = happySpecReduce_1  17 happyReduction_42
happyReduction_42 (HappyTerminal (TokenIdent happy_var_1))
	 =  HappyAbsSyn17
		 (Variable happy_var_1
	)
happyReduction_42 _  = notHappyAtAll 

happyReduce_43 = happySpecReduce_3  17 happyReduction_43
happyReduction_43 _
	(HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn17
		 (happy_var_2
	)
happyReduction_43 _ _ _  = notHappyAtAll 

happyReduce_44 = happyReduce 4 17 happyReduction_44
happyReduction_44 (_ `HappyStk`
	(HappyAbsSyn18  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn17  happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn17
		 (Call happy_var_1 happy_var_3
	) `HappyStk` happyRest

happyReduce_45 = happySpecReduce_3  17 happyReduction_45
happyReduction_45 (HappyTerminal (TokenIdent happy_var_3))
	_
	(HappyAbsSyn17  happy_var_1)
	 =  HappyAbsSyn17
		 (ObjAccess happy_var_1 happy_var_3
	)
happyReduction_45 _ _ _  = notHappyAtAll 

happyReduce_46 = happySpecReduce_1  18 happyReduction_46
happyReduction_46 (HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn18
		 (happy_var_1
	)
happyReduction_46 _  = notHappyAtAll 

happyReduce_47 = happySpecReduce_0  18 happyReduction_47
happyReduction_47  =  HappyAbsSyn18
		 (Literal Undefined
	)

happyNewToken action sts stk [] =
	action 52 52 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	TokenKeyword "function" -> cont 19;
	TokenKeyword "if" -> cont 20;
	TokenKeyword "else" -> cont 21;
	TokenKeyword "true" -> cont 22;
	TokenKeyword "false" -> cont 23;
	TokenKeyword "var" -> cont 24;
	TokenKeyword "mutable" -> cont 25;
	TokenKeyword "undefined" -> cont 26;
	TokenKeyword "return" -> cont 27;
	Symbol ";" -> cont 28;
	TokenIdent happy_dollar_dollar -> cont 29;
	Digits happy_dollar_dollar -> cont 30;
	Symbol "=" -> cont 31;
	Symbol "+" -> cont 32;
	Symbol "-" -> cont 33;
	Symbol "*" -> cont 34;
	Symbol "/" -> cont 35;
	Symbol "<" -> cont 36;
	Symbol ">" -> cont 37;
	Symbol "<=" -> cont 38;
	Symbol ">=" -> cont 39;
	Symbol "==" -> cont 40;
	Symbol "&&" -> cont 41;
	Symbol "!" -> cont 42;
	Symbol "@" -> cont 43;
	Symbol "||" -> cont 44;
	Symbol "(" -> cont 45;
	Symbol ")" -> cont 46;
	Symbol "{" -> cont 47;
	Symbol "}" -> cont 48;
	Symbol "." -> cont 49;
	Symbol ":" -> cont 50;
	Symbol "," -> cont 51;
	_ -> happyError' (tk:tks)
	}

happyError_ 52 tk tks = happyError' tks
happyError_ _ tk tks = happyError' (tk:tks)

newtype HappyIdentity a = HappyIdentity a
happyIdentity = HappyIdentity
happyRunIdentity (HappyIdentity a) = a

instance Monad HappyIdentity where
    return = HappyIdentity
    (HappyIdentity p) >>= q = q p

happyThen :: () => HappyIdentity a -> (a -> HappyIdentity b) -> HappyIdentity b
happyThen = (>>=)
happyReturn :: () => a -> HappyIdentity a
happyReturn = (return)
happyThen1 m k tks = (>>=) m (\a -> k a tks)
happyReturn1 :: () => a -> b -> HappyIdentity a
happyReturn1 = \a tks -> (return) a
happyError' :: () => [(Token)] -> HappyIdentity a
happyError' = HappyIdentity . happyError

parser tks = happyRunIdentity happySomeParser where
  happySomeParser = happyThen (happyParse action_0 tks) (\x -> case x of {HappyAbsSyn4 z -> happyReturn z; _other -> notHappyAtAll })

happySeq = happyDontSeq


symbols = ["+", "-", "*", "/", "(", ")", "{", "}", ";", "==", "=", "<=", ">=", "<", ">", "||", "&&", "!", "@", ".", ":"]
keywords = ["function", "var", "if", "else", "true", "false", "mutable", "undefined", "return"] 
parseExp str = parser (lexer symbols keywords str)

parseInput = do
  input <- getContents
  print (parseExp input)
{-# LINE 1 "templates/GenericTemplate.hs" #-}
{-# LINE 1 "templates/GenericTemplate.hs" #-}
{-# LINE 1 "<command-line>" #-}





# 1 "/usr/include/stdc-predef.h" 1 3 4

# 17 "/usr/include/stdc-predef.h" 3 4














# 1 "/usr/include/x86_64-linux-gnu/bits/predefs.h" 1 3 4

# 18 "/usr/include/x86_64-linux-gnu/bits/predefs.h" 3 4












# 31 "/usr/include/stdc-predef.h" 2 3 4








# 5 "<command-line>" 2
{-# LINE 1 "templates/GenericTemplate.hs" #-}
-- Id: GenericTemplate.hs,v 1.26 2005/01/14 14:47:22 simonmar Exp 

{-# LINE 13 "templates/GenericTemplate.hs" #-}

{-# LINE 45 "templates/GenericTemplate.hs" #-}








{-# LINE 66 "templates/GenericTemplate.hs" #-}

{-# LINE 76 "templates/GenericTemplate.hs" #-}

{-# LINE 85 "templates/GenericTemplate.hs" #-}

infixr 9 `HappyStk`
data HappyStk a = HappyStk a (HappyStk a)

-----------------------------------------------------------------------------
-- starting the parse

happyParse start_state = happyNewToken start_state notHappyAtAll notHappyAtAll

-----------------------------------------------------------------------------
-- Accepting the parse

-- If the current token is (1), it means we've just accepted a partial
-- parse (a %partial parser).  We must ignore the saved token on the top of
-- the stack in this case.
happyAccept (1) tk st sts (_ `HappyStk` ans `HappyStk` _) =
	happyReturn1 ans
happyAccept j tk st sts (HappyStk ans _) = 
	 (happyReturn1 ans)

-----------------------------------------------------------------------------
-- Arrays only: do the next action

{-# LINE 154 "templates/GenericTemplate.hs" #-}

-----------------------------------------------------------------------------
-- HappyState data type (not arrays)



newtype HappyState b c = HappyState
        (Int ->                    -- token number
         Int ->                    -- token number (yes, again)
         b ->                           -- token semantic value
         HappyState b c ->              -- current state
         [HappyState b c] ->            -- state stack
         c)



-----------------------------------------------------------------------------
-- Shifting a token

happyShift new_state (1) tk st sts stk@(x `HappyStk` _) =
     let i = (case x of { HappyErrorToken (i) -> i }) in
--     trace "shifting the error token" $
     new_state i i tk (HappyState (new_state)) ((st):(sts)) (stk)

happyShift new_state i tk st sts stk =
     happyNewToken new_state ((st):(sts)) ((HappyTerminal (tk))`HappyStk`stk)

-- happyReduce is specialised for the common cases.

happySpecReduce_0 i fn (1) tk st sts stk
     = happyFail (1) tk st sts stk
happySpecReduce_0 nt fn j tk st@((HappyState (action))) sts stk
     = action nt j tk st ((st):(sts)) (fn `HappyStk` stk)

happySpecReduce_1 i fn (1) tk st sts stk
     = happyFail (1) tk st sts stk
happySpecReduce_1 nt fn j tk _ sts@(((st@(HappyState (action))):(_))) (v1`HappyStk`stk')
     = let r = fn v1 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_2 i fn (1) tk st sts stk
     = happyFail (1) tk st sts stk
happySpecReduce_2 nt fn j tk _ ((_):(sts@(((st@(HappyState (action))):(_))))) (v1`HappyStk`v2`HappyStk`stk')
     = let r = fn v1 v2 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_3 i fn (1) tk st sts stk
     = happyFail (1) tk st sts stk
happySpecReduce_3 nt fn j tk _ ((_):(((_):(sts@(((st@(HappyState (action))):(_))))))) (v1`HappyStk`v2`HappyStk`v3`HappyStk`stk')
     = let r = fn v1 v2 v3 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happyReduce k i fn (1) tk st sts stk
     = happyFail (1) tk st sts stk
happyReduce k nt fn j tk st sts stk
     = case happyDrop (k - ((1) :: Int)) sts of
	 sts1@(((st1@(HappyState (action))):(_))) ->
        	let r = fn stk in  -- it doesn't hurt to always seq here...
       		happyDoSeq r (action nt j tk st1 sts1 r)

happyMonadReduce k nt fn (1) tk st sts stk
     = happyFail (1) tk st sts stk
happyMonadReduce k nt fn j tk st sts stk =
      case happyDrop k ((st):(sts)) of
        sts1@(((st1@(HappyState (action))):(_))) ->
          let drop_stk = happyDropStk k stk in
          happyThen1 (fn stk tk) (\r -> action nt j tk st1 sts1 (r `HappyStk` drop_stk))

happyMonad2Reduce k nt fn (1) tk st sts stk
     = happyFail (1) tk st sts stk
happyMonad2Reduce k nt fn j tk st sts stk =
      case happyDrop k ((st):(sts)) of
        sts1@(((st1@(HappyState (action))):(_))) ->
         let drop_stk = happyDropStk k stk





             new_state = action

          in
          happyThen1 (fn stk tk) (\r -> happyNewToken new_state sts1 (r `HappyStk` drop_stk))

happyDrop (0) l = l
happyDrop n ((_):(t)) = happyDrop (n - ((1) :: Int)) t

happyDropStk (0) l = l
happyDropStk n (x `HappyStk` xs) = happyDropStk (n - ((1)::Int)) xs

-----------------------------------------------------------------------------
-- Moving to a new state after a reduction

{-# LINE 255 "templates/GenericTemplate.hs" #-}
happyGoto action j tk st = action j j tk (HappyState action)


-----------------------------------------------------------------------------
-- Error recovery ((1) is the error token)

-- parse error if we are in recovery and we fail again
happyFail (1) tk old_st _ stk@(x `HappyStk` _) =
     let i = (case x of { HappyErrorToken (i) -> i }) in
--	trace "failing" $ 
        happyError_ i tk

{-  We don't need state discarding for our restricted implementation of
    "error".  In fact, it can cause some bogus parses, so I've disabled it
    for now --SDM

-- discard a state
happyFail  (1) tk old_st (((HappyState (action))):(sts)) 
						(saved_tok `HappyStk` _ `HappyStk` stk) =
--	trace ("discarding state, depth " ++ show (length stk))  $
	action (1) (1) tk (HappyState (action)) sts ((saved_tok`HappyStk`stk))
-}

-- Enter error recovery: generate an error token,
--                       save the old token and carry on.
happyFail  i tk (HappyState (action)) sts stk =
--      trace "entering error recovery" $
	action (1) (1) tk (HappyState (action)) sts ( (HappyErrorToken (i)) `HappyStk` stk)

-- Internal happy errors:

notHappyAtAll :: a
notHappyAtAll = error "Internal Happy error\n"

-----------------------------------------------------------------------------
-- Hack to get the typechecker to accept our action functions







-----------------------------------------------------------------------------
-- Seq-ing.  If the --strict flag is given, then Happy emits 
--	happySeq = happyDoSeq
-- otherwise it emits
-- 	happySeq = happyDontSeq

happyDoSeq, happyDontSeq :: a -> b -> b
happyDoSeq   a b = a `seq` b
happyDontSeq a b = b

-----------------------------------------------------------------------------
-- Don't inline any functions from the template.  GHC has a nasty habit
-- of deciding to inline happyGoto everywhere, which increases the size of
-- the generated parser quite a bit.

{-# LINE 321 "templates/GenericTemplate.hs" #-}
{-# NOINLINE happyShift #-}
{-# NOINLINE happySpecReduce_0 #-}
{-# NOINLINE happySpecReduce_1 #-}
{-# NOINLINE happySpecReduce_2 #-}
{-# NOINLINE happySpecReduce_3 #-}
{-# NOINLINE happyReduce #-}
{-# NOINLINE happyMonadReduce #-}
{-# NOINLINE happyGoto #-}
{-# NOINLINE happyFail #-}

-- end of Happy Template.
