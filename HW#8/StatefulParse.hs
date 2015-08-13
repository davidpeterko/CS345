{-# OPTIONS_GHC -w #-}
module StatefulParse where
import Prelude hiding (LT, GT, EQ, id)
import Data.Char
import CheckedStatefulMonad
import Lexer
import Operators
import Control.Applicative(Applicative(..))
import Control.Monad (ap)

-- parser produced by Happy Version 1.19.5

data HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15
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

action_0 (16) = happyShift action_11
action_0 (17) = happyShift action_12
action_0 (19) = happyShift action_13
action_0 (20) = happyShift action_14
action_0 (21) = happyShift action_15
action_0 (22) = happyShift action_16
action_0 (23) = happyShift action_17
action_0 (24) = happyShift action_18
action_0 (26) = happyShift action_19
action_0 (27) = happyShift action_20
action_0 (30) = happyShift action_21
action_0 (39) = happyShift action_22
action_0 (40) = happyShift action_23
action_0 (42) = happyShift action_24
action_0 (4) = happyGoto action_25
action_0 (5) = happyGoto action_26
action_0 (7) = happyGoto action_3
action_0 (8) = happyGoto action_4
action_0 (9) = happyGoto action_5
action_0 (10) = happyGoto action_6
action_0 (11) = happyGoto action_7
action_0 (12) = happyGoto action_8
action_0 (13) = happyGoto action_9
action_0 (14) = happyGoto action_10
action_0 _ = happyFail

action_1 (16) = happyShift action_11
action_1 (17) = happyShift action_12
action_1 (19) = happyShift action_13
action_1 (20) = happyShift action_14
action_1 (21) = happyShift action_15
action_1 (22) = happyShift action_16
action_1 (23) = happyShift action_17
action_1 (24) = happyShift action_18
action_1 (26) = happyShift action_19
action_1 (27) = happyShift action_20
action_1 (30) = happyShift action_21
action_1 (39) = happyShift action_22
action_1 (40) = happyShift action_23
action_1 (42) = happyShift action_24
action_1 (5) = happyGoto action_2
action_1 (7) = happyGoto action_3
action_1 (8) = happyGoto action_4
action_1 (9) = happyGoto action_5
action_1 (10) = happyGoto action_6
action_1 (11) = happyGoto action_7
action_1 (12) = happyGoto action_8
action_1 (13) = happyGoto action_9
action_1 (14) = happyGoto action_10
action_1 _ = happyFail

action_2 (25) = happyShift action_27
action_2 _ = happyFail

action_3 _ = happyReduce_6

action_4 (28) = happyShift action_48
action_4 (41) = happyShift action_49
action_4 _ = happyReduce_11

action_5 (38) = happyShift action_47
action_5 _ = happyReduce_13

action_6 (33) = happyShift action_42
action_6 (34) = happyShift action_43
action_6 (35) = happyShift action_44
action_6 (36) = happyShift action_45
action_6 (37) = happyShift action_46
action_6 _ = happyReduce_15

action_7 (29) = happyShift action_40
action_7 (30) = happyShift action_41
action_7 _ = happyReduce_21

action_8 (31) = happyShift action_38
action_8 (32) = happyShift action_39
action_8 _ = happyReduce_24

action_9 _ = happyReduce_27

action_10 (42) = happyShift action_37
action_10 _ = happyReduce_32

action_11 (42) = happyShift action_36
action_11 _ = happyFail

action_12 (42) = happyShift action_35
action_12 _ = happyFail

action_13 _ = happyReduce_34

action_14 _ = happyReduce_35

action_15 (26) = happyShift action_34
action_15 _ = happyFail

action_16 (19) = happyShift action_13
action_16 (20) = happyShift action_14
action_16 (23) = happyShift action_17
action_16 (26) = happyShift action_19
action_16 (27) = happyShift action_20
action_16 (42) = happyShift action_24
action_16 (14) = happyGoto action_33
action_16 _ = happyFail

action_17 _ = happyReduce_36

action_18 (16) = happyShift action_11
action_18 (17) = happyShift action_12
action_18 (19) = happyShift action_13
action_18 (20) = happyShift action_14
action_18 (21) = happyShift action_15
action_18 (22) = happyShift action_16
action_18 (23) = happyShift action_17
action_18 (24) = happyShift action_18
action_18 (26) = happyShift action_19
action_18 (27) = happyShift action_20
action_18 (30) = happyShift action_21
action_18 (39) = happyShift action_22
action_18 (40) = happyShift action_23
action_18 (42) = happyShift action_24
action_18 (5) = happyGoto action_32
action_18 (7) = happyGoto action_3
action_18 (8) = happyGoto action_4
action_18 (9) = happyGoto action_5
action_18 (10) = happyGoto action_6
action_18 (11) = happyGoto action_7
action_18 (12) = happyGoto action_8
action_18 (13) = happyGoto action_9
action_18 (14) = happyGoto action_10
action_18 _ = happyFail

action_19 _ = happyReduce_37

action_20 _ = happyReduce_33

action_21 (19) = happyShift action_13
action_21 (20) = happyShift action_14
action_21 (23) = happyShift action_17
action_21 (26) = happyShift action_19
action_21 (27) = happyShift action_20
action_21 (42) = happyShift action_24
action_21 (14) = happyGoto action_31
action_21 _ = happyFail

action_22 (19) = happyShift action_13
action_22 (20) = happyShift action_14
action_22 (23) = happyShift action_17
action_22 (26) = happyShift action_19
action_22 (27) = happyShift action_20
action_22 (42) = happyShift action_24
action_22 (14) = happyGoto action_30
action_22 _ = happyFail

action_23 (19) = happyShift action_13
action_23 (20) = happyShift action_14
action_23 (23) = happyShift action_17
action_23 (26) = happyShift action_19
action_23 (27) = happyShift action_20
action_23 (42) = happyShift action_24
action_23 (14) = happyGoto action_29
action_23 _ = happyFail

action_24 (16) = happyShift action_11
action_24 (17) = happyShift action_12
action_24 (19) = happyShift action_13
action_24 (20) = happyShift action_14
action_24 (21) = happyShift action_15
action_24 (22) = happyShift action_16
action_24 (23) = happyShift action_17
action_24 (24) = happyShift action_18
action_24 (26) = happyShift action_19
action_24 (27) = happyShift action_20
action_24 (30) = happyShift action_21
action_24 (39) = happyShift action_22
action_24 (40) = happyShift action_23
action_24 (42) = happyShift action_24
action_24 (4) = happyGoto action_28
action_24 (5) = happyGoto action_26
action_24 (7) = happyGoto action_3
action_24 (8) = happyGoto action_4
action_24 (9) = happyGoto action_5
action_24 (10) = happyGoto action_6
action_24 (11) = happyGoto action_7
action_24 (12) = happyGoto action_8
action_24 (13) = happyGoto action_9
action_24 (14) = happyGoto action_10
action_24 _ = happyFail

action_25 (46) = happyAccept
action_25 _ = happyFail

action_26 (25) = happyShift action_27
action_26 _ = happyReduce_2

action_27 (16) = happyShift action_11
action_27 (17) = happyShift action_12
action_27 (19) = happyShift action_13
action_27 (20) = happyShift action_14
action_27 (21) = happyShift action_15
action_27 (22) = happyShift action_16
action_27 (23) = happyShift action_17
action_27 (24) = happyShift action_18
action_27 (26) = happyShift action_19
action_27 (27) = happyShift action_20
action_27 (30) = happyShift action_21
action_27 (39) = happyShift action_22
action_27 (40) = happyShift action_23
action_27 (42) = happyShift action_24
action_27 (4) = happyGoto action_69
action_27 (5) = happyGoto action_26
action_27 (7) = happyGoto action_3
action_27 (8) = happyGoto action_4
action_27 (9) = happyGoto action_5
action_27 (10) = happyGoto action_6
action_27 (11) = happyGoto action_7
action_27 (12) = happyGoto action_8
action_27 (13) = happyGoto action_9
action_27 (14) = happyGoto action_10
action_27 _ = happyFail

action_28 (43) = happyShift action_68
action_28 _ = happyFail

action_29 (42) = happyShift action_37
action_29 _ = happyReduce_30

action_30 (42) = happyShift action_37
action_30 _ = happyReduce_29

action_31 (42) = happyShift action_37
action_31 _ = happyReduce_28

action_32 _ = happyReduce_7

action_33 (42) = happyShift action_37
action_33 _ = happyReduce_31

action_34 (28) = happyShift action_67
action_34 _ = happyFail

action_35 (16) = happyShift action_11
action_35 (17) = happyShift action_12
action_35 (19) = happyShift action_13
action_35 (20) = happyShift action_14
action_35 (21) = happyShift action_15
action_35 (22) = happyShift action_16
action_35 (23) = happyShift action_17
action_35 (24) = happyShift action_18
action_35 (26) = happyShift action_19
action_35 (27) = happyShift action_20
action_35 (30) = happyShift action_21
action_35 (39) = happyShift action_22
action_35 (40) = happyShift action_23
action_35 (42) = happyShift action_24
action_35 (5) = happyGoto action_66
action_35 (7) = happyGoto action_3
action_35 (8) = happyGoto action_4
action_35 (9) = happyGoto action_5
action_35 (10) = happyGoto action_6
action_35 (11) = happyGoto action_7
action_35 (12) = happyGoto action_8
action_35 (13) = happyGoto action_9
action_35 (14) = happyGoto action_10
action_35 _ = happyFail

action_36 (26) = happyShift action_65
action_36 (6) = happyGoto action_64
action_36 _ = happyReduce_9

action_37 (16) = happyShift action_11
action_37 (17) = happyShift action_12
action_37 (19) = happyShift action_13
action_37 (20) = happyShift action_14
action_37 (21) = happyShift action_15
action_37 (22) = happyShift action_16
action_37 (23) = happyShift action_17
action_37 (24) = happyShift action_18
action_37 (26) = happyShift action_19
action_37 (27) = happyShift action_20
action_37 (30) = happyShift action_21
action_37 (39) = happyShift action_22
action_37 (40) = happyShift action_23
action_37 (42) = happyShift action_24
action_37 (4) = happyGoto action_62
action_37 (5) = happyGoto action_26
action_37 (7) = happyGoto action_3
action_37 (8) = happyGoto action_4
action_37 (9) = happyGoto action_5
action_37 (10) = happyGoto action_6
action_37 (11) = happyGoto action_7
action_37 (12) = happyGoto action_8
action_37 (13) = happyGoto action_9
action_37 (14) = happyGoto action_10
action_37 (15) = happyGoto action_63
action_37 _ = happyReduce_41

action_38 (19) = happyShift action_13
action_38 (20) = happyShift action_14
action_38 (22) = happyShift action_16
action_38 (23) = happyShift action_17
action_38 (26) = happyShift action_19
action_38 (27) = happyShift action_20
action_38 (30) = happyShift action_21
action_38 (39) = happyShift action_22
action_38 (40) = happyShift action_23
action_38 (42) = happyShift action_24
action_38 (13) = happyGoto action_61
action_38 (14) = happyGoto action_10
action_38 _ = happyFail

action_39 (19) = happyShift action_13
action_39 (20) = happyShift action_14
action_39 (22) = happyShift action_16
action_39 (23) = happyShift action_17
action_39 (26) = happyShift action_19
action_39 (27) = happyShift action_20
action_39 (30) = happyShift action_21
action_39 (39) = happyShift action_22
action_39 (40) = happyShift action_23
action_39 (42) = happyShift action_24
action_39 (13) = happyGoto action_60
action_39 (14) = happyGoto action_10
action_39 _ = happyFail

action_40 (19) = happyShift action_13
action_40 (20) = happyShift action_14
action_40 (22) = happyShift action_16
action_40 (23) = happyShift action_17
action_40 (26) = happyShift action_19
action_40 (27) = happyShift action_20
action_40 (30) = happyShift action_21
action_40 (39) = happyShift action_22
action_40 (40) = happyShift action_23
action_40 (42) = happyShift action_24
action_40 (12) = happyGoto action_59
action_40 (13) = happyGoto action_9
action_40 (14) = happyGoto action_10
action_40 _ = happyFail

action_41 (19) = happyShift action_13
action_41 (20) = happyShift action_14
action_41 (22) = happyShift action_16
action_41 (23) = happyShift action_17
action_41 (26) = happyShift action_19
action_41 (27) = happyShift action_20
action_41 (30) = happyShift action_21
action_41 (39) = happyShift action_22
action_41 (40) = happyShift action_23
action_41 (42) = happyShift action_24
action_41 (12) = happyGoto action_58
action_41 (13) = happyGoto action_9
action_41 (14) = happyGoto action_10
action_41 _ = happyFail

action_42 (19) = happyShift action_13
action_42 (20) = happyShift action_14
action_42 (22) = happyShift action_16
action_42 (23) = happyShift action_17
action_42 (26) = happyShift action_19
action_42 (27) = happyShift action_20
action_42 (30) = happyShift action_21
action_42 (39) = happyShift action_22
action_42 (40) = happyShift action_23
action_42 (42) = happyShift action_24
action_42 (11) = happyGoto action_57
action_42 (12) = happyGoto action_8
action_42 (13) = happyGoto action_9
action_42 (14) = happyGoto action_10
action_42 _ = happyFail

action_43 (19) = happyShift action_13
action_43 (20) = happyShift action_14
action_43 (22) = happyShift action_16
action_43 (23) = happyShift action_17
action_43 (26) = happyShift action_19
action_43 (27) = happyShift action_20
action_43 (30) = happyShift action_21
action_43 (39) = happyShift action_22
action_43 (40) = happyShift action_23
action_43 (42) = happyShift action_24
action_43 (11) = happyGoto action_56
action_43 (12) = happyGoto action_8
action_43 (13) = happyGoto action_9
action_43 (14) = happyGoto action_10
action_43 _ = happyFail

action_44 (19) = happyShift action_13
action_44 (20) = happyShift action_14
action_44 (22) = happyShift action_16
action_44 (23) = happyShift action_17
action_44 (26) = happyShift action_19
action_44 (27) = happyShift action_20
action_44 (30) = happyShift action_21
action_44 (39) = happyShift action_22
action_44 (40) = happyShift action_23
action_44 (42) = happyShift action_24
action_44 (11) = happyGoto action_55
action_44 (12) = happyGoto action_8
action_44 (13) = happyGoto action_9
action_44 (14) = happyGoto action_10
action_44 _ = happyFail

action_45 (19) = happyShift action_13
action_45 (20) = happyShift action_14
action_45 (22) = happyShift action_16
action_45 (23) = happyShift action_17
action_45 (26) = happyShift action_19
action_45 (27) = happyShift action_20
action_45 (30) = happyShift action_21
action_45 (39) = happyShift action_22
action_45 (40) = happyShift action_23
action_45 (42) = happyShift action_24
action_45 (11) = happyGoto action_54
action_45 (12) = happyGoto action_8
action_45 (13) = happyGoto action_9
action_45 (14) = happyGoto action_10
action_45 _ = happyFail

action_46 (19) = happyShift action_13
action_46 (20) = happyShift action_14
action_46 (22) = happyShift action_16
action_46 (23) = happyShift action_17
action_46 (26) = happyShift action_19
action_46 (27) = happyShift action_20
action_46 (30) = happyShift action_21
action_46 (39) = happyShift action_22
action_46 (40) = happyShift action_23
action_46 (42) = happyShift action_24
action_46 (11) = happyGoto action_53
action_46 (12) = happyGoto action_8
action_46 (13) = happyGoto action_9
action_46 (14) = happyGoto action_10
action_46 _ = happyFail

action_47 (19) = happyShift action_13
action_47 (20) = happyShift action_14
action_47 (22) = happyShift action_16
action_47 (23) = happyShift action_17
action_47 (26) = happyShift action_19
action_47 (27) = happyShift action_20
action_47 (30) = happyShift action_21
action_47 (39) = happyShift action_22
action_47 (40) = happyShift action_23
action_47 (42) = happyShift action_24
action_47 (10) = happyGoto action_52
action_47 (11) = happyGoto action_7
action_47 (12) = happyGoto action_8
action_47 (13) = happyGoto action_9
action_47 (14) = happyGoto action_10
action_47 _ = happyFail

action_48 (19) = happyShift action_13
action_48 (20) = happyShift action_14
action_48 (22) = happyShift action_16
action_48 (23) = happyShift action_17
action_48 (26) = happyShift action_19
action_48 (27) = happyShift action_20
action_48 (30) = happyShift action_21
action_48 (39) = happyShift action_22
action_48 (40) = happyShift action_23
action_48 (42) = happyShift action_24
action_48 (7) = happyGoto action_51
action_48 (8) = happyGoto action_4
action_48 (9) = happyGoto action_5
action_48 (10) = happyGoto action_6
action_48 (11) = happyGoto action_7
action_48 (12) = happyGoto action_8
action_48 (13) = happyGoto action_9
action_48 (14) = happyGoto action_10
action_48 _ = happyFail

action_49 (19) = happyShift action_13
action_49 (20) = happyShift action_14
action_49 (22) = happyShift action_16
action_49 (23) = happyShift action_17
action_49 (26) = happyShift action_19
action_49 (27) = happyShift action_20
action_49 (30) = happyShift action_21
action_49 (39) = happyShift action_22
action_49 (40) = happyShift action_23
action_49 (42) = happyShift action_24
action_49 (9) = happyGoto action_50
action_49 (10) = happyGoto action_6
action_49 (11) = happyGoto action_7
action_49 (12) = happyGoto action_8
action_49 (13) = happyGoto action_9
action_49 (14) = happyGoto action_10
action_49 _ = happyFail

action_50 (38) = happyShift action_47
action_50 _ = happyReduce_12

action_51 _ = happyReduce_10

action_52 (33) = happyShift action_42
action_52 (34) = happyShift action_43
action_52 (35) = happyShift action_44
action_52 (36) = happyShift action_45
action_52 (37) = happyShift action_46
action_52 _ = happyReduce_14

action_53 (29) = happyShift action_40
action_53 (30) = happyShift action_41
action_53 _ = happyReduce_16

action_54 (29) = happyShift action_40
action_54 (30) = happyShift action_41
action_54 _ = happyReduce_20

action_55 (29) = happyShift action_40
action_55 (30) = happyShift action_41
action_55 _ = happyReduce_19

action_56 (29) = happyShift action_40
action_56 (30) = happyShift action_41
action_56 _ = happyReduce_18

action_57 (29) = happyShift action_40
action_57 (30) = happyShift action_41
action_57 _ = happyReduce_17

action_58 (31) = happyShift action_38
action_58 (32) = happyShift action_39
action_58 _ = happyReduce_23

action_59 (31) = happyShift action_38
action_59 (32) = happyShift action_39
action_59 _ = happyReduce_22

action_60 _ = happyReduce_26

action_61 _ = happyReduce_25

action_62 _ = happyReduce_40

action_63 (43) = happyShift action_73
action_63 _ = happyFail

action_64 (43) = happyShift action_72
action_64 _ = happyFail

action_65 _ = happyReduce_8

action_66 (43) = happyShift action_71
action_66 _ = happyFail

action_67 (16) = happyShift action_11
action_67 (17) = happyShift action_12
action_67 (19) = happyShift action_13
action_67 (20) = happyShift action_14
action_67 (21) = happyShift action_15
action_67 (22) = happyShift action_16
action_67 (23) = happyShift action_17
action_67 (24) = happyShift action_18
action_67 (26) = happyShift action_19
action_67 (27) = happyShift action_20
action_67 (30) = happyShift action_21
action_67 (39) = happyShift action_22
action_67 (40) = happyShift action_23
action_67 (42) = happyShift action_24
action_67 (5) = happyGoto action_70
action_67 (7) = happyGoto action_3
action_67 (8) = happyGoto action_4
action_67 (9) = happyGoto action_5
action_67 (10) = happyGoto action_6
action_67 (11) = happyGoto action_7
action_67 (12) = happyGoto action_8
action_67 (13) = happyGoto action_9
action_67 (14) = happyGoto action_10
action_67 _ = happyFail

action_68 _ = happyReduce_38

action_69 _ = happyReduce_1

action_70 (25) = happyShift action_76
action_70 _ = happyFail

action_71 (44) = happyShift action_75
action_71 _ = happyFail

action_72 (44) = happyShift action_74
action_72 _ = happyFail

action_73 _ = happyReduce_39

action_74 (16) = happyShift action_11
action_74 (17) = happyShift action_12
action_74 (19) = happyShift action_13
action_74 (20) = happyShift action_14
action_74 (21) = happyShift action_15
action_74 (22) = happyShift action_16
action_74 (23) = happyShift action_17
action_74 (24) = happyShift action_18
action_74 (26) = happyShift action_19
action_74 (27) = happyShift action_20
action_74 (30) = happyShift action_21
action_74 (39) = happyShift action_22
action_74 (40) = happyShift action_23
action_74 (42) = happyShift action_24
action_74 (4) = happyGoto action_79
action_74 (5) = happyGoto action_26
action_74 (7) = happyGoto action_3
action_74 (8) = happyGoto action_4
action_74 (9) = happyGoto action_5
action_74 (10) = happyGoto action_6
action_74 (11) = happyGoto action_7
action_74 (12) = happyGoto action_8
action_74 (13) = happyGoto action_9
action_74 (14) = happyGoto action_10
action_74 _ = happyFail

action_75 (16) = happyShift action_11
action_75 (17) = happyShift action_12
action_75 (19) = happyShift action_13
action_75 (20) = happyShift action_14
action_75 (21) = happyShift action_15
action_75 (22) = happyShift action_16
action_75 (23) = happyShift action_17
action_75 (24) = happyShift action_18
action_75 (26) = happyShift action_19
action_75 (27) = happyShift action_20
action_75 (30) = happyShift action_21
action_75 (39) = happyShift action_22
action_75 (40) = happyShift action_23
action_75 (42) = happyShift action_24
action_75 (4) = happyGoto action_78
action_75 (5) = happyGoto action_26
action_75 (7) = happyGoto action_3
action_75 (8) = happyGoto action_4
action_75 (9) = happyGoto action_5
action_75 (10) = happyGoto action_6
action_75 (11) = happyGoto action_7
action_75 (12) = happyGoto action_8
action_75 (13) = happyGoto action_9
action_75 (14) = happyGoto action_10
action_75 _ = happyFail

action_76 (16) = happyShift action_11
action_76 (17) = happyShift action_12
action_76 (19) = happyShift action_13
action_76 (20) = happyShift action_14
action_76 (21) = happyShift action_15
action_76 (22) = happyShift action_16
action_76 (23) = happyShift action_17
action_76 (24) = happyShift action_18
action_76 (26) = happyShift action_19
action_76 (27) = happyShift action_20
action_76 (30) = happyShift action_21
action_76 (39) = happyShift action_22
action_76 (40) = happyShift action_23
action_76 (42) = happyShift action_24
action_76 (4) = happyGoto action_77
action_76 (5) = happyGoto action_26
action_76 (7) = happyGoto action_3
action_76 (8) = happyGoto action_4
action_76 (9) = happyGoto action_5
action_76 (10) = happyGoto action_6
action_76 (11) = happyGoto action_7
action_76 (12) = happyGoto action_8
action_76 (13) = happyGoto action_9
action_76 (14) = happyGoto action_10
action_76 _ = happyFail

action_77 _ = happyReduce_4

action_78 (45) = happyShift action_81
action_78 _ = happyFail

action_79 (45) = happyShift action_80
action_79 _ = happyFail

action_80 _ = happyReduce_3

action_81 (18) = happyShift action_82
action_81 _ = happyFail

action_82 (44) = happyShift action_83
action_82 _ = happyFail

action_83 (16) = happyShift action_11
action_83 (17) = happyShift action_12
action_83 (19) = happyShift action_13
action_83 (20) = happyShift action_14
action_83 (21) = happyShift action_15
action_83 (22) = happyShift action_16
action_83 (23) = happyShift action_17
action_83 (24) = happyShift action_18
action_83 (26) = happyShift action_19
action_83 (27) = happyShift action_20
action_83 (30) = happyShift action_21
action_83 (39) = happyShift action_22
action_83 (40) = happyShift action_23
action_83 (42) = happyShift action_24
action_83 (4) = happyGoto action_84
action_83 (5) = happyGoto action_26
action_83 (7) = happyGoto action_3
action_83 (8) = happyGoto action_4
action_83 (9) = happyGoto action_5
action_83 (10) = happyGoto action_6
action_83 (11) = happyGoto action_7
action_83 (12) = happyGoto action_8
action_83 (13) = happyGoto action_9
action_83 (14) = happyGoto action_10
action_83 _ = happyFail

action_84 (45) = happyShift action_85
action_84 _ = happyFail

action_85 _ = happyReduce_5

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
	(HappyAbsSyn6  happy_var_3) `HappyStk`
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
happyReduction_6 (HappyAbsSyn7  happy_var_1)
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

happyReduce_8 = happySpecReduce_1  6 happyReduction_8
happyReduction_8 (HappyTerminal (TokenIdent happy_var_1))
	 =  HappyAbsSyn6
		 (happy_var_1
	)
happyReduction_8 _  = notHappyAtAll 

happyReduce_9 = happySpecReduce_0  6 happyReduction_9
happyReduction_9  =  HappyAbsSyn6
		 ("_"
	)

happyReduce_10 = happySpecReduce_3  7 happyReduction_10
happyReduction_10 (HappyAbsSyn7  happy_var_3)
	_
	(HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn7
		 (Assign happy_var_1 happy_var_3
	)
happyReduction_10 _ _ _  = notHappyAtAll 

happyReduce_11 = happySpecReduce_1  7 happyReduction_11
happyReduction_11 (HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn7
		 (happy_var_1
	)
happyReduction_11 _  = notHappyAtAll 

happyReduce_12 = happySpecReduce_3  8 happyReduction_12
happyReduction_12 (HappyAbsSyn9  happy_var_3)
	_
	(HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn8
		 (Binary Or happy_var_1 happy_var_3
	)
happyReduction_12 _ _ _  = notHappyAtAll 

happyReduce_13 = happySpecReduce_1  8 happyReduction_13
happyReduction_13 (HappyAbsSyn9  happy_var_1)
	 =  HappyAbsSyn8
		 (happy_var_1
	)
happyReduction_13 _  = notHappyAtAll 

happyReduce_14 = happySpecReduce_3  9 happyReduction_14
happyReduction_14 (HappyAbsSyn10  happy_var_3)
	_
	(HappyAbsSyn9  happy_var_1)
	 =  HappyAbsSyn9
		 (Binary And happy_var_1 happy_var_3
	)
happyReduction_14 _ _ _  = notHappyAtAll 

happyReduce_15 = happySpecReduce_1  9 happyReduction_15
happyReduction_15 (HappyAbsSyn10  happy_var_1)
	 =  HappyAbsSyn9
		 (happy_var_1
	)
happyReduction_15 _  = notHappyAtAll 

happyReduce_16 = happySpecReduce_3  10 happyReduction_16
happyReduction_16 (HappyAbsSyn11  happy_var_3)
	_
	(HappyAbsSyn10  happy_var_1)
	 =  HappyAbsSyn10
		 (Binary EQ happy_var_1 happy_var_3
	)
happyReduction_16 _ _ _  = notHappyAtAll 

happyReduce_17 = happySpecReduce_3  10 happyReduction_17
happyReduction_17 (HappyAbsSyn11  happy_var_3)
	_
	(HappyAbsSyn10  happy_var_1)
	 =  HappyAbsSyn10
		 (Binary LT happy_var_1 happy_var_3
	)
happyReduction_17 _ _ _  = notHappyAtAll 

happyReduce_18 = happySpecReduce_3  10 happyReduction_18
happyReduction_18 (HappyAbsSyn11  happy_var_3)
	_
	(HappyAbsSyn10  happy_var_1)
	 =  HappyAbsSyn10
		 (Binary GT happy_var_1 happy_var_3
	)
happyReduction_18 _ _ _  = notHappyAtAll 

happyReduce_19 = happySpecReduce_3  10 happyReduction_19
happyReduction_19 (HappyAbsSyn11  happy_var_3)
	_
	(HappyAbsSyn10  happy_var_1)
	 =  HappyAbsSyn10
		 (Binary LE happy_var_1 happy_var_3
	)
happyReduction_19 _ _ _  = notHappyAtAll 

happyReduce_20 = happySpecReduce_3  10 happyReduction_20
happyReduction_20 (HappyAbsSyn11  happy_var_3)
	_
	(HappyAbsSyn10  happy_var_1)
	 =  HappyAbsSyn10
		 (Binary GE happy_var_1 happy_var_3
	)
happyReduction_20 _ _ _  = notHappyAtAll 

happyReduce_21 = happySpecReduce_1  10 happyReduction_21
happyReduction_21 (HappyAbsSyn11  happy_var_1)
	 =  HappyAbsSyn10
		 (happy_var_1
	)
happyReduction_21 _  = notHappyAtAll 

happyReduce_22 = happySpecReduce_3  11 happyReduction_22
happyReduction_22 (HappyAbsSyn12  happy_var_3)
	_
	(HappyAbsSyn11  happy_var_1)
	 =  HappyAbsSyn11
		 (Binary Add happy_var_1 happy_var_3
	)
happyReduction_22 _ _ _  = notHappyAtAll 

happyReduce_23 = happySpecReduce_3  11 happyReduction_23
happyReduction_23 (HappyAbsSyn12  happy_var_3)
	_
	(HappyAbsSyn11  happy_var_1)
	 =  HappyAbsSyn11
		 (Binary Sub happy_var_1 happy_var_3
	)
happyReduction_23 _ _ _  = notHappyAtAll 

happyReduce_24 = happySpecReduce_1  11 happyReduction_24
happyReduction_24 (HappyAbsSyn12  happy_var_1)
	 =  HappyAbsSyn11
		 (happy_var_1
	)
happyReduction_24 _  = notHappyAtAll 

happyReduce_25 = happySpecReduce_3  12 happyReduction_25
happyReduction_25 (HappyAbsSyn13  happy_var_3)
	_
	(HappyAbsSyn12  happy_var_1)
	 =  HappyAbsSyn12
		 (Binary Mul happy_var_1 happy_var_3
	)
happyReduction_25 _ _ _  = notHappyAtAll 

happyReduce_26 = happySpecReduce_3  12 happyReduction_26
happyReduction_26 (HappyAbsSyn13  happy_var_3)
	_
	(HappyAbsSyn12  happy_var_1)
	 =  HappyAbsSyn12
		 (Binary Div happy_var_1 happy_var_3
	)
happyReduction_26 _ _ _  = notHappyAtAll 

happyReduce_27 = happySpecReduce_1  12 happyReduction_27
happyReduction_27 (HappyAbsSyn13  happy_var_1)
	 =  HappyAbsSyn12
		 (happy_var_1
	)
happyReduction_27 _  = notHappyAtAll 

happyReduce_28 = happySpecReduce_2  13 happyReduction_28
happyReduction_28 (HappyAbsSyn14  happy_var_2)
	_
	 =  HappyAbsSyn13
		 (Unary Neg happy_var_2
	)
happyReduction_28 _ _  = notHappyAtAll 

happyReduce_29 = happySpecReduce_2  13 happyReduction_29
happyReduction_29 (HappyAbsSyn14  happy_var_2)
	_
	 =  HappyAbsSyn13
		 (Unary Not happy_var_2
	)
happyReduction_29 _ _  = notHappyAtAll 

happyReduce_30 = happySpecReduce_2  13 happyReduction_30
happyReduction_30 (HappyAbsSyn14  happy_var_2)
	_
	 =  HappyAbsSyn13
		 (Access happy_var_2
	)
happyReduction_30 _ _  = notHappyAtAll 

happyReduce_31 = happySpecReduce_2  13 happyReduction_31
happyReduction_31 (HappyAbsSyn14  happy_var_2)
	_
	 =  HappyAbsSyn13
		 (Mutable happy_var_2
	)
happyReduction_31 _ _  = notHappyAtAll 

happyReduce_32 = happySpecReduce_1  13 happyReduction_32
happyReduction_32 (HappyAbsSyn14  happy_var_1)
	 =  HappyAbsSyn13
		 (happy_var_1
	)
happyReduction_32 _  = notHappyAtAll 

happyReduce_33 = happySpecReduce_1  14 happyReduction_33
happyReduction_33 (HappyTerminal (Digits happy_var_1))
	 =  HappyAbsSyn14
		 (Literal (IntV happy_var_1)
	)
happyReduction_33 _  = notHappyAtAll 

happyReduce_34 = happySpecReduce_1  14 happyReduction_34
happyReduction_34 _
	 =  HappyAbsSyn14
		 (Literal (BoolV True)
	)

happyReduce_35 = happySpecReduce_1  14 happyReduction_35
happyReduction_35 _
	 =  HappyAbsSyn14
		 (Literal (BoolV False)
	)

happyReduce_36 = happySpecReduce_1  14 happyReduction_36
happyReduction_36 _
	 =  HappyAbsSyn14
		 (Literal Undefined
	)

happyReduce_37 = happySpecReduce_1  14 happyReduction_37
happyReduction_37 (HappyTerminal (TokenIdent happy_var_1))
	 =  HappyAbsSyn14
		 (Variable happy_var_1
	)
happyReduction_37 _  = notHappyAtAll 

happyReduce_38 = happySpecReduce_3  14 happyReduction_38
happyReduction_38 _
	(HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn14
		 (happy_var_2
	)
happyReduction_38 _ _ _  = notHappyAtAll 

happyReduce_39 = happyReduce 4 14 happyReduction_39
happyReduction_39 (_ `HappyStk`
	(HappyAbsSyn15  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn14  happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn14
		 (Call happy_var_1 happy_var_3
	) `HappyStk` happyRest

happyReduce_40 = happySpecReduce_1  15 happyReduction_40
happyReduction_40 (HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn15
		 (happy_var_1
	)
happyReduction_40 _  = notHappyAtAll 

happyReduce_41 = happySpecReduce_0  15 happyReduction_41
happyReduction_41  =  HappyAbsSyn15
		 (Literal Undefined
	)

happyNewToken action sts stk [] =
	action 46 46 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	TokenKeyword "function" -> cont 16;
	TokenKeyword "if" -> cont 17;
	TokenKeyword "else" -> cont 18;
	TokenKeyword "true" -> cont 19;
	TokenKeyword "false" -> cont 20;
	TokenKeyword "var" -> cont 21;
	TokenKeyword "mutable" -> cont 22;
	TokenKeyword "undefined" -> cont 23;
	TokenKeyword "return" -> cont 24;
	Symbol ";" -> cont 25;
	TokenIdent happy_dollar_dollar -> cont 26;
	Digits happy_dollar_dollar -> cont 27;
	Symbol "=" -> cont 28;
	Symbol "+" -> cont 29;
	Symbol "-" -> cont 30;
	Symbol "*" -> cont 31;
	Symbol "/" -> cont 32;
	Symbol "<" -> cont 33;
	Symbol ">" -> cont 34;
	Symbol "<=" -> cont 35;
	Symbol ">=" -> cont 36;
	Symbol "==" -> cont 37;
	Symbol "&&" -> cont 38;
	Symbol "!" -> cont 39;
	Symbol "@" -> cont 40;
	Symbol "||" -> cont 41;
	Symbol "(" -> cont 42;
	Symbol ")" -> cont 43;
	Symbol "{" -> cont 44;
	Symbol "}" -> cont 45;
	_ -> happyError' (tk:tks)
	}

happyError_ 46 tk tks = happyError' tks
happyError_ _ tk tks = happyError' (tk:tks)

newtype HappyIdentity a = HappyIdentity a
happyIdentity = HappyIdentity
happyRunIdentity (HappyIdentity a) = a

instance Functor HappyIdentity where
    fmap f (HappyIdentity a) = HappyIdentity (f a)

instance Applicative HappyIdentity where
    pure  = return
    (<*>) = ap
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


symbols = ["+", "-", "*", "/", "(", ")", "{", "}", ";", "==", "=", "<=", ">=", "<", ">", "||", "&&", "!", "@"]
keywords = ["function", "var", "if", "else", "true", "false", "mutable", "undefined", "return"]
parseExp str = parser (lexer symbols keywords str)

parseInput = do
  input <- getContents
  print (parseExp input)
{-# LINE 1 "templates/GenericTemplate.hs" #-}
{-# LINE 1 "templates/GenericTemplate.hs" #-}
{-# LINE 1 "<built-in>" #-}
{-# LINE 16 "<built-in>" #-}
{-# LINE 1 "/usr/local/Cellar/ghc/7.10.1_1/lib/ghc-7.10.1/include/ghcversion.h" #-}


















{-# LINE 17 "<built-in>" #-}
{-# LINE 1 "templates/GenericTemplate.hs" #-}
-- Id: GenericTemplate.hs,v 1.26 2005/01/14 14:47:22 simonmar Exp 


{-# LINE 13 "templates/GenericTemplate.hs" #-}


{-# LINE 46 "templates/GenericTemplate.hs" #-}









{-# LINE 67 "templates/GenericTemplate.hs" #-}


{-# LINE 77 "templates/GenericTemplate.hs" #-}










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


{-# LINE 155 "templates/GenericTemplate.hs" #-}

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









happyGoto action j tk st = action j j tk (HappyState action)


-----------------------------------------------------------------------------
-- Error recovery ((1) is the error token)

-- parse error if we are in recovery and we fail again
happyFail (1) tk old_st _ stk@(x `HappyStk` _) =
     let i = (case x of { HappyErrorToken (i) -> i }) in
--      trace "failing" $ 
        happyError_ i tk

{-  We don't need state discarding for our restricted implementation of
    "error".  In fact, it can cause some bogus parses, so I've disabled it
    for now --SDM

-- discard a state
happyFail  (1) tk old_st (((HappyState (action))):(sts)) 
                                                (saved_tok `HappyStk` _ `HappyStk` stk) =
--      trace ("discarding state, depth " ++ show (length stk))  $
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
--      happySeq = happyDoSeq
-- otherwise it emits
--      happySeq = happyDontSeq

happyDoSeq, happyDontSeq :: a -> b -> b
happyDoSeq   a b = a `seq` b
happyDontSeq a b = b

-----------------------------------------------------------------------------
-- Don't inline any functions from the template.  GHC has a nasty habit
-- of deciding to inline happyGoto everywhere, which increases the size of
-- the generated parser quite a bit.









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

