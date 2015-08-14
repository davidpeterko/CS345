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
action_0 (26) = happyShift action_27
action_0 (27) = happyShift action_20
action_0 (30) = happyShift action_21
action_0 (39) = happyShift action_22
action_0 (40) = happyShift action_23
action_0 (42) = happyShift action_24
action_0 (47) = happyShift action_28
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

action_2 (25) = happyShift action_30
action_2 _ = happyFail

action_3 _ = happyReduce_9

action_4 (28) = happyShift action_52
action_4 (41) = happyShift action_53
action_4 _ = happyReduce_14

action_5 (38) = happyShift action_51
action_5 _ = happyReduce_16

action_6 (33) = happyShift action_46
action_6 (34) = happyShift action_47
action_6 (35) = happyShift action_48
action_6 (36) = happyShift action_49
action_6 (37) = happyShift action_50
action_6 _ = happyReduce_18

action_7 (29) = happyShift action_44
action_7 (30) = happyShift action_45
action_7 _ = happyReduce_24

action_8 (31) = happyShift action_42
action_8 (32) = happyShift action_43
action_8 _ = happyReduce_27

action_9 _ = happyReduce_30

action_10 (42) = happyShift action_41
action_10 _ = happyReduce_35

action_11 (42) = happyShift action_40
action_11 _ = happyFail

action_12 (42) = happyShift action_39
action_12 _ = happyFail

action_13 _ = happyReduce_37

action_14 _ = happyReduce_38

action_15 (26) = happyShift action_38
action_15 _ = happyFail

action_16 (19) = happyShift action_13
action_16 (20) = happyShift action_14
action_16 (23) = happyShift action_17
action_16 (26) = happyShift action_19
action_16 (27) = happyShift action_20
action_16 (42) = happyShift action_24
action_16 (14) = happyGoto action_37
action_16 _ = happyFail

action_17 _ = happyReduce_39

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
action_18 (5) = happyGoto action_36
action_18 (7) = happyGoto action_3
action_18 (8) = happyGoto action_4
action_18 (9) = happyGoto action_5
action_18 (10) = happyGoto action_6
action_18 (11) = happyGoto action_7
action_18 (12) = happyGoto action_8
action_18 (13) = happyGoto action_9
action_18 (14) = happyGoto action_10
action_18 _ = happyFail

action_19 _ = happyReduce_40

action_20 _ = happyReduce_36

action_21 (19) = happyShift action_13
action_21 (20) = happyShift action_14
action_21 (23) = happyShift action_17
action_21 (26) = happyShift action_19
action_21 (27) = happyShift action_20
action_21 (42) = happyShift action_24
action_21 (14) = happyGoto action_35
action_21 _ = happyFail

action_22 (19) = happyShift action_13
action_22 (20) = happyShift action_14
action_22 (23) = happyShift action_17
action_22 (26) = happyShift action_19
action_22 (27) = happyShift action_20
action_22 (42) = happyShift action_24
action_22 (14) = happyGoto action_34
action_22 _ = happyFail

action_23 (19) = happyShift action_13
action_23 (20) = happyShift action_14
action_23 (23) = happyShift action_17
action_23 (26) = happyShift action_19
action_23 (27) = happyShift action_20
action_23 (42) = happyShift action_24
action_23 (14) = happyGoto action_33
action_23 _ = happyFail

action_24 (16) = happyShift action_11
action_24 (17) = happyShift action_12
action_24 (19) = happyShift action_13
action_24 (20) = happyShift action_14
action_24 (21) = happyShift action_15
action_24 (22) = happyShift action_16
action_24 (23) = happyShift action_17
action_24 (24) = happyShift action_18
action_24 (26) = happyShift action_27
action_24 (27) = happyShift action_20
action_24 (30) = happyShift action_21
action_24 (39) = happyShift action_22
action_24 (40) = happyShift action_23
action_24 (42) = happyShift action_24
action_24 (47) = happyShift action_28
action_24 (4) = happyGoto action_32
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

action_25 (46) = happyShift action_31
action_25 (50) = happyAccept
action_25 _ = happyFail

action_26 (25) = happyShift action_30
action_26 _ = happyReduce_2

action_27 (48) = happyShift action_29
action_27 _ = happyReduce_40

action_28 _ = happyReduce_3

action_29 (16) = happyShift action_11
action_29 (17) = happyShift action_12
action_29 (19) = happyShift action_13
action_29 (20) = happyShift action_14
action_29 (21) = happyShift action_15
action_29 (22) = happyShift action_16
action_29 (23) = happyShift action_17
action_29 (24) = happyShift action_18
action_29 (26) = happyShift action_27
action_29 (27) = happyShift action_20
action_29 (30) = happyShift action_21
action_29 (39) = happyShift action_22
action_29 (40) = happyShift action_23
action_29 (42) = happyShift action_24
action_29 (47) = happyShift action_28
action_29 (4) = happyGoto action_75
action_29 (5) = happyGoto action_26
action_29 (7) = happyGoto action_3
action_29 (8) = happyGoto action_4
action_29 (9) = happyGoto action_5
action_29 (10) = happyGoto action_6
action_29 (11) = happyGoto action_7
action_29 (12) = happyGoto action_8
action_29 (13) = happyGoto action_9
action_29 (14) = happyGoto action_10
action_29 _ = happyFail

action_30 (16) = happyShift action_11
action_30 (17) = happyShift action_12
action_30 (19) = happyShift action_13
action_30 (20) = happyShift action_14
action_30 (21) = happyShift action_15
action_30 (22) = happyShift action_16
action_30 (23) = happyShift action_17
action_30 (24) = happyShift action_18
action_30 (26) = happyShift action_27
action_30 (27) = happyShift action_20
action_30 (30) = happyShift action_21
action_30 (39) = happyShift action_22
action_30 (40) = happyShift action_23
action_30 (42) = happyShift action_24
action_30 (47) = happyShift action_28
action_30 (4) = happyGoto action_74
action_30 (5) = happyGoto action_26
action_30 (7) = happyGoto action_3
action_30 (8) = happyGoto action_4
action_30 (9) = happyGoto action_5
action_30 (10) = happyGoto action_6
action_30 (11) = happyGoto action_7
action_30 (12) = happyGoto action_8
action_30 (13) = happyGoto action_9
action_30 (14) = happyGoto action_10
action_30 _ = happyFail

action_31 (26) = happyShift action_73
action_31 _ = happyFail

action_32 (43) = happyShift action_72
action_32 (46) = happyShift action_31
action_32 _ = happyFail

action_33 (42) = happyShift action_41
action_33 _ = happyReduce_33

action_34 (42) = happyShift action_41
action_34 _ = happyReduce_32

action_35 (42) = happyShift action_41
action_35 _ = happyReduce_31

action_36 _ = happyReduce_10

action_37 (42) = happyShift action_41
action_37 _ = happyReduce_34

action_38 (28) = happyShift action_71
action_38 _ = happyFail

action_39 (16) = happyShift action_11
action_39 (17) = happyShift action_12
action_39 (19) = happyShift action_13
action_39 (20) = happyShift action_14
action_39 (21) = happyShift action_15
action_39 (22) = happyShift action_16
action_39 (23) = happyShift action_17
action_39 (24) = happyShift action_18
action_39 (26) = happyShift action_19
action_39 (27) = happyShift action_20
action_39 (30) = happyShift action_21
action_39 (39) = happyShift action_22
action_39 (40) = happyShift action_23
action_39 (42) = happyShift action_24
action_39 (5) = happyGoto action_70
action_39 (7) = happyGoto action_3
action_39 (8) = happyGoto action_4
action_39 (9) = happyGoto action_5
action_39 (10) = happyGoto action_6
action_39 (11) = happyGoto action_7
action_39 (12) = happyGoto action_8
action_39 (13) = happyGoto action_9
action_39 (14) = happyGoto action_10
action_39 _ = happyFail

action_40 (26) = happyShift action_69
action_40 (6) = happyGoto action_68
action_40 _ = happyReduce_12

action_41 (16) = happyShift action_11
action_41 (17) = happyShift action_12
action_41 (19) = happyShift action_13
action_41 (20) = happyShift action_14
action_41 (21) = happyShift action_15
action_41 (22) = happyShift action_16
action_41 (23) = happyShift action_17
action_41 (24) = happyShift action_18
action_41 (26) = happyShift action_27
action_41 (27) = happyShift action_20
action_41 (30) = happyShift action_21
action_41 (39) = happyShift action_22
action_41 (40) = happyShift action_23
action_41 (42) = happyShift action_24
action_41 (47) = happyShift action_28
action_41 (4) = happyGoto action_66
action_41 (5) = happyGoto action_26
action_41 (7) = happyGoto action_3
action_41 (8) = happyGoto action_4
action_41 (9) = happyGoto action_5
action_41 (10) = happyGoto action_6
action_41 (11) = happyGoto action_7
action_41 (12) = happyGoto action_8
action_41 (13) = happyGoto action_9
action_41 (14) = happyGoto action_10
action_41 (15) = happyGoto action_67
action_41 _ = happyReduce_44

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
action_42 (13) = happyGoto action_65
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
action_43 (13) = happyGoto action_64
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
action_44 (12) = happyGoto action_63
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
action_45 (12) = happyGoto action_62
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
action_46 (11) = happyGoto action_61
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
action_47 (11) = happyGoto action_60
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
action_48 (11) = happyGoto action_59
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
action_49 (11) = happyGoto action_58
action_49 (12) = happyGoto action_8
action_49 (13) = happyGoto action_9
action_49 (14) = happyGoto action_10
action_49 _ = happyFail

action_50 (19) = happyShift action_13
action_50 (20) = happyShift action_14
action_50 (22) = happyShift action_16
action_50 (23) = happyShift action_17
action_50 (26) = happyShift action_19
action_50 (27) = happyShift action_20
action_50 (30) = happyShift action_21
action_50 (39) = happyShift action_22
action_50 (40) = happyShift action_23
action_50 (42) = happyShift action_24
action_50 (11) = happyGoto action_57
action_50 (12) = happyGoto action_8
action_50 (13) = happyGoto action_9
action_50 (14) = happyGoto action_10
action_50 _ = happyFail

action_51 (19) = happyShift action_13
action_51 (20) = happyShift action_14
action_51 (22) = happyShift action_16
action_51 (23) = happyShift action_17
action_51 (26) = happyShift action_19
action_51 (27) = happyShift action_20
action_51 (30) = happyShift action_21
action_51 (39) = happyShift action_22
action_51 (40) = happyShift action_23
action_51 (42) = happyShift action_24
action_51 (10) = happyGoto action_56
action_51 (11) = happyGoto action_7
action_51 (12) = happyGoto action_8
action_51 (13) = happyGoto action_9
action_51 (14) = happyGoto action_10
action_51 _ = happyFail

action_52 (19) = happyShift action_13
action_52 (20) = happyShift action_14
action_52 (22) = happyShift action_16
action_52 (23) = happyShift action_17
action_52 (26) = happyShift action_19
action_52 (27) = happyShift action_20
action_52 (30) = happyShift action_21
action_52 (39) = happyShift action_22
action_52 (40) = happyShift action_23
action_52 (42) = happyShift action_24
action_52 (7) = happyGoto action_55
action_52 (8) = happyGoto action_4
action_52 (9) = happyGoto action_5
action_52 (10) = happyGoto action_6
action_52 (11) = happyGoto action_7
action_52 (12) = happyGoto action_8
action_52 (13) = happyGoto action_9
action_52 (14) = happyGoto action_10
action_52 _ = happyFail

action_53 (19) = happyShift action_13
action_53 (20) = happyShift action_14
action_53 (22) = happyShift action_16
action_53 (23) = happyShift action_17
action_53 (26) = happyShift action_19
action_53 (27) = happyShift action_20
action_53 (30) = happyShift action_21
action_53 (39) = happyShift action_22
action_53 (40) = happyShift action_23
action_53 (42) = happyShift action_24
action_53 (9) = happyGoto action_54
action_53 (10) = happyGoto action_6
action_53 (11) = happyGoto action_7
action_53 (12) = happyGoto action_8
action_53 (13) = happyGoto action_9
action_53 (14) = happyGoto action_10
action_53 _ = happyFail

action_54 (38) = happyShift action_51
action_54 _ = happyReduce_15

action_55 _ = happyReduce_13

action_56 (33) = happyShift action_46
action_56 (34) = happyShift action_47
action_56 (35) = happyShift action_48
action_56 (36) = happyShift action_49
action_56 (37) = happyShift action_50
action_56 _ = happyReduce_17

action_57 (29) = happyShift action_44
action_57 (30) = happyShift action_45
action_57 _ = happyReduce_19

action_58 (29) = happyShift action_44
action_58 (30) = happyShift action_45
action_58 _ = happyReduce_23

action_59 (29) = happyShift action_44
action_59 (30) = happyShift action_45
action_59 _ = happyReduce_22

action_60 (29) = happyShift action_44
action_60 (30) = happyShift action_45
action_60 _ = happyReduce_21

action_61 (29) = happyShift action_44
action_61 (30) = happyShift action_45
action_61 _ = happyReduce_20

action_62 (31) = happyShift action_42
action_62 (32) = happyShift action_43
action_62 _ = happyReduce_26

action_63 (31) = happyShift action_42
action_63 (32) = happyShift action_43
action_63 _ = happyReduce_25

action_64 _ = happyReduce_29

action_65 _ = happyReduce_28

action_66 (46) = happyShift action_31
action_66 _ = happyReduce_43

action_67 (43) = happyShift action_79
action_67 _ = happyFail

action_68 (43) = happyShift action_78
action_68 _ = happyFail

action_69 _ = happyReduce_11

action_70 (43) = happyShift action_77
action_70 _ = happyFail

action_71 (16) = happyShift action_11
action_71 (17) = happyShift action_12
action_71 (19) = happyShift action_13
action_71 (20) = happyShift action_14
action_71 (21) = happyShift action_15
action_71 (22) = happyShift action_16
action_71 (23) = happyShift action_17
action_71 (24) = happyShift action_18
action_71 (26) = happyShift action_19
action_71 (27) = happyShift action_20
action_71 (30) = happyShift action_21
action_71 (39) = happyShift action_22
action_71 (40) = happyShift action_23
action_71 (42) = happyShift action_24
action_71 (5) = happyGoto action_76
action_71 (7) = happyGoto action_3
action_71 (8) = happyGoto action_4
action_71 (9) = happyGoto action_5
action_71 (10) = happyGoto action_6
action_71 (11) = happyGoto action_7
action_71 (12) = happyGoto action_8
action_71 (13) = happyGoto action_9
action_71 (14) = happyGoto action_10
action_71 _ = happyFail

action_72 _ = happyReduce_41

action_73 _ = happyReduce_4

action_74 (46) = happyShift action_31
action_74 _ = happyReduce_1

action_75 (46) = happyShift action_31
action_75 _ = happyReduce_5

action_76 (25) = happyShift action_82
action_76 _ = happyFail

action_77 (44) = happyShift action_81
action_77 _ = happyFail

action_78 (44) = happyShift action_80
action_78 _ = happyFail

action_79 _ = happyReduce_42

action_80 (16) = happyShift action_11
action_80 (17) = happyShift action_12
action_80 (19) = happyShift action_13
action_80 (20) = happyShift action_14
action_80 (21) = happyShift action_15
action_80 (22) = happyShift action_16
action_80 (23) = happyShift action_17
action_80 (24) = happyShift action_18
action_80 (26) = happyShift action_27
action_80 (27) = happyShift action_20
action_80 (30) = happyShift action_21
action_80 (39) = happyShift action_22
action_80 (40) = happyShift action_23
action_80 (42) = happyShift action_24
action_80 (47) = happyShift action_28
action_80 (4) = happyGoto action_85
action_80 (5) = happyGoto action_26
action_80 (7) = happyGoto action_3
action_80 (8) = happyGoto action_4
action_80 (9) = happyGoto action_5
action_80 (10) = happyGoto action_6
action_80 (11) = happyGoto action_7
action_80 (12) = happyGoto action_8
action_80 (13) = happyGoto action_9
action_80 (14) = happyGoto action_10
action_80 _ = happyFail

action_81 (16) = happyShift action_11
action_81 (17) = happyShift action_12
action_81 (19) = happyShift action_13
action_81 (20) = happyShift action_14
action_81 (21) = happyShift action_15
action_81 (22) = happyShift action_16
action_81 (23) = happyShift action_17
action_81 (24) = happyShift action_18
action_81 (26) = happyShift action_27
action_81 (27) = happyShift action_20
action_81 (30) = happyShift action_21
action_81 (39) = happyShift action_22
action_81 (40) = happyShift action_23
action_81 (42) = happyShift action_24
action_81 (47) = happyShift action_28
action_81 (4) = happyGoto action_84
action_81 (5) = happyGoto action_26
action_81 (7) = happyGoto action_3
action_81 (8) = happyGoto action_4
action_81 (9) = happyGoto action_5
action_81 (10) = happyGoto action_6
action_81 (11) = happyGoto action_7
action_81 (12) = happyGoto action_8
action_81 (13) = happyGoto action_9
action_81 (14) = happyGoto action_10
action_81 _ = happyFail

action_82 (16) = happyShift action_11
action_82 (17) = happyShift action_12
action_82 (19) = happyShift action_13
action_82 (20) = happyShift action_14
action_82 (21) = happyShift action_15
action_82 (22) = happyShift action_16
action_82 (23) = happyShift action_17
action_82 (24) = happyShift action_18
action_82 (26) = happyShift action_27
action_82 (27) = happyShift action_20
action_82 (30) = happyShift action_21
action_82 (39) = happyShift action_22
action_82 (40) = happyShift action_23
action_82 (42) = happyShift action_24
action_82 (47) = happyShift action_28
action_82 (4) = happyGoto action_83
action_82 (5) = happyGoto action_26
action_82 (7) = happyGoto action_3
action_82 (8) = happyGoto action_4
action_82 (9) = happyGoto action_5
action_82 (10) = happyGoto action_6
action_82 (11) = happyGoto action_7
action_82 (12) = happyGoto action_8
action_82 (13) = happyGoto action_9
action_82 (14) = happyGoto action_10
action_82 _ = happyFail

action_83 (46) = happyShift action_31
action_83 _ = happyReduce_7

action_84 (45) = happyShift action_87
action_84 (46) = happyShift action_31
action_84 _ = happyFail

action_85 (45) = happyShift action_86
action_85 (46) = happyShift action_31
action_85 _ = happyFail

action_86 _ = happyReduce_6

action_87 (18) = happyShift action_88
action_87 _ = happyFail

action_88 (44) = happyShift action_89
action_88 _ = happyFail

action_89 (16) = happyShift action_11
action_89 (17) = happyShift action_12
action_89 (19) = happyShift action_13
action_89 (20) = happyShift action_14
action_89 (21) = happyShift action_15
action_89 (22) = happyShift action_16
action_89 (23) = happyShift action_17
action_89 (24) = happyShift action_18
action_89 (26) = happyShift action_27
action_89 (27) = happyShift action_20
action_89 (30) = happyShift action_21
action_89 (39) = happyShift action_22
action_89 (40) = happyShift action_23
action_89 (42) = happyShift action_24
action_89 (47) = happyShift action_28
action_89 (4) = happyGoto action_90
action_89 (5) = happyGoto action_26
action_89 (7) = happyGoto action_3
action_89 (8) = happyGoto action_4
action_89 (9) = happyGoto action_5
action_89 (10) = happyGoto action_6
action_89 (11) = happyGoto action_7
action_89 (12) = happyGoto action_8
action_89 (13) = happyGoto action_9
action_89 (14) = happyGoto action_10
action_89 _ = happyFail

action_90 (45) = happyShift action_91
action_90 (46) = happyShift action_31
action_90 _ = happyFail

action_91 _ = happyReduce_8

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

happyReduce_3 = happySpecReduce_1  4 happyReduction_3
happyReduction_3 _
	 =  HappyAbsSyn4
		 (This
	)

happyReduce_4 = happySpecReduce_3  4 happyReduction_4
happyReduction_4 (HappyTerminal (TokenIdent happy_var_3))
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Field happy_var_1 happy_var_3
	)
happyReduction_4 _ _ _  = notHappyAtAll 

happyReduce_5 = happySpecReduce_3  4 happyReduction_5
happyReduction_5 (HappyAbsSyn4  happy_var_3)
	_
	(HappyTerminal (TokenIdent happy_var_1))
	 =  HappyAbsSyn4
		 (ObjectExp happy_var_1 happy_var_3
	)
happyReduction_5 _ _ _  = notHappyAtAll 

happyReduce_6 = happyReduce 7 5 happyReduction_6
happyReduction_6 (_ `HappyStk`
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

happyReduce_7 = happyReduce 6 5 happyReduction_7
happyReduction_7 ((HappyAbsSyn4  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn5  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenIdent happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn5
		 (Declare happy_var_2 happy_var_4 happy_var_6
	) `HappyStk` happyRest

happyReduce_8 = happyReduce 11 5 happyReduction_8
happyReduction_8 (_ `HappyStk`
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

happyReduce_9 = happySpecReduce_1  5 happyReduction_9
happyReduction_9 (HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn5
		 (happy_var_1
	)
happyReduction_9 _  = notHappyAtAll 

happyReduce_10 = happySpecReduce_2  5 happyReduction_10
happyReduction_10 (HappyAbsSyn5  happy_var_2)
	_
	 =  HappyAbsSyn5
		 (ReturnExp happy_var_2
	)
happyReduction_10 _ _  = notHappyAtAll 

happyReduce_11 = happySpecReduce_1  6 happyReduction_11
happyReduction_11 (HappyTerminal (TokenIdent happy_var_1))
	 =  HappyAbsSyn6
		 (happy_var_1
	)
happyReduction_11 _  = notHappyAtAll 

happyReduce_12 = happySpecReduce_0  6 happyReduction_12
happyReduction_12  =  HappyAbsSyn6
		 ("_"
	)

happyReduce_13 = happySpecReduce_3  7 happyReduction_13
happyReduction_13 (HappyAbsSyn7  happy_var_3)
	_
	(HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn7
		 (Assign happy_var_1 happy_var_3
	)
happyReduction_13 _ _ _  = notHappyAtAll 

happyReduce_14 = happySpecReduce_1  7 happyReduction_14
happyReduction_14 (HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn7
		 (happy_var_1
	)
happyReduction_14 _  = notHappyAtAll 

happyReduce_15 = happySpecReduce_3  8 happyReduction_15
happyReduction_15 (HappyAbsSyn9  happy_var_3)
	_
	(HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn8
		 (Binary Or happy_var_1 happy_var_3
	)
happyReduction_15 _ _ _  = notHappyAtAll 

happyReduce_16 = happySpecReduce_1  8 happyReduction_16
happyReduction_16 (HappyAbsSyn9  happy_var_1)
	 =  HappyAbsSyn8
		 (happy_var_1
	)
happyReduction_16 _  = notHappyAtAll 

happyReduce_17 = happySpecReduce_3  9 happyReduction_17
happyReduction_17 (HappyAbsSyn10  happy_var_3)
	_
	(HappyAbsSyn9  happy_var_1)
	 =  HappyAbsSyn9
		 (Binary And happy_var_1 happy_var_3
	)
happyReduction_17 _ _ _  = notHappyAtAll 

happyReduce_18 = happySpecReduce_1  9 happyReduction_18
happyReduction_18 (HappyAbsSyn10  happy_var_1)
	 =  HappyAbsSyn9
		 (happy_var_1
	)
happyReduction_18 _  = notHappyAtAll 

happyReduce_19 = happySpecReduce_3  10 happyReduction_19
happyReduction_19 (HappyAbsSyn11  happy_var_3)
	_
	(HappyAbsSyn10  happy_var_1)
	 =  HappyAbsSyn10
		 (Binary EQ happy_var_1 happy_var_3
	)
happyReduction_19 _ _ _  = notHappyAtAll 

happyReduce_20 = happySpecReduce_3  10 happyReduction_20
happyReduction_20 (HappyAbsSyn11  happy_var_3)
	_
	(HappyAbsSyn10  happy_var_1)
	 =  HappyAbsSyn10
		 (Binary LT happy_var_1 happy_var_3
	)
happyReduction_20 _ _ _  = notHappyAtAll 

happyReduce_21 = happySpecReduce_3  10 happyReduction_21
happyReduction_21 (HappyAbsSyn11  happy_var_3)
	_
	(HappyAbsSyn10  happy_var_1)
	 =  HappyAbsSyn10
		 (Binary GT happy_var_1 happy_var_3
	)
happyReduction_21 _ _ _  = notHappyAtAll 

happyReduce_22 = happySpecReduce_3  10 happyReduction_22
happyReduction_22 (HappyAbsSyn11  happy_var_3)
	_
	(HappyAbsSyn10  happy_var_1)
	 =  HappyAbsSyn10
		 (Binary LE happy_var_1 happy_var_3
	)
happyReduction_22 _ _ _  = notHappyAtAll 

happyReduce_23 = happySpecReduce_3  10 happyReduction_23
happyReduction_23 (HappyAbsSyn11  happy_var_3)
	_
	(HappyAbsSyn10  happy_var_1)
	 =  HappyAbsSyn10
		 (Binary GE happy_var_1 happy_var_3
	)
happyReduction_23 _ _ _  = notHappyAtAll 

happyReduce_24 = happySpecReduce_1  10 happyReduction_24
happyReduction_24 (HappyAbsSyn11  happy_var_1)
	 =  HappyAbsSyn10
		 (happy_var_1
	)
happyReduction_24 _  = notHappyAtAll 

happyReduce_25 = happySpecReduce_3  11 happyReduction_25
happyReduction_25 (HappyAbsSyn12  happy_var_3)
	_
	(HappyAbsSyn11  happy_var_1)
	 =  HappyAbsSyn11
		 (Binary Add happy_var_1 happy_var_3
	)
happyReduction_25 _ _ _  = notHappyAtAll 

happyReduce_26 = happySpecReduce_3  11 happyReduction_26
happyReduction_26 (HappyAbsSyn12  happy_var_3)
	_
	(HappyAbsSyn11  happy_var_1)
	 =  HappyAbsSyn11
		 (Binary Sub happy_var_1 happy_var_3
	)
happyReduction_26 _ _ _  = notHappyAtAll 

happyReduce_27 = happySpecReduce_1  11 happyReduction_27
happyReduction_27 (HappyAbsSyn12  happy_var_1)
	 =  HappyAbsSyn11
		 (happy_var_1
	)
happyReduction_27 _  = notHappyAtAll 

happyReduce_28 = happySpecReduce_3  12 happyReduction_28
happyReduction_28 (HappyAbsSyn13  happy_var_3)
	_
	(HappyAbsSyn12  happy_var_1)
	 =  HappyAbsSyn12
		 (Binary Mul happy_var_1 happy_var_3
	)
happyReduction_28 _ _ _  = notHappyAtAll 

happyReduce_29 = happySpecReduce_3  12 happyReduction_29
happyReduction_29 (HappyAbsSyn13  happy_var_3)
	_
	(HappyAbsSyn12  happy_var_1)
	 =  HappyAbsSyn12
		 (Binary Div happy_var_1 happy_var_3
	)
happyReduction_29 _ _ _  = notHappyAtAll 

happyReduce_30 = happySpecReduce_1  12 happyReduction_30
happyReduction_30 (HappyAbsSyn13  happy_var_1)
	 =  HappyAbsSyn12
		 (happy_var_1
	)
happyReduction_30 _  = notHappyAtAll 

happyReduce_31 = happySpecReduce_2  13 happyReduction_31
happyReduction_31 (HappyAbsSyn14  happy_var_2)
	_
	 =  HappyAbsSyn13
		 (Unary Neg happy_var_2
	)
happyReduction_31 _ _  = notHappyAtAll 

happyReduce_32 = happySpecReduce_2  13 happyReduction_32
happyReduction_32 (HappyAbsSyn14  happy_var_2)
	_
	 =  HappyAbsSyn13
		 (Unary Not happy_var_2
	)
happyReduction_32 _ _  = notHappyAtAll 

happyReduce_33 = happySpecReduce_2  13 happyReduction_33
happyReduction_33 (HappyAbsSyn14  happy_var_2)
	_
	 =  HappyAbsSyn13
		 (Access happy_var_2
	)
happyReduction_33 _ _  = notHappyAtAll 

happyReduce_34 = happySpecReduce_2  13 happyReduction_34
happyReduction_34 (HappyAbsSyn14  happy_var_2)
	_
	 =  HappyAbsSyn13
		 (Mutable happy_var_2
	)
happyReduction_34 _ _  = notHappyAtAll 

happyReduce_35 = happySpecReduce_1  13 happyReduction_35
happyReduction_35 (HappyAbsSyn14  happy_var_1)
	 =  HappyAbsSyn13
		 (happy_var_1
	)
happyReduction_35 _  = notHappyAtAll 

happyReduce_36 = happySpecReduce_1  14 happyReduction_36
happyReduction_36 (HappyTerminal (Digits happy_var_1))
	 =  HappyAbsSyn14
		 (Literal (IntV happy_var_1)
	)
happyReduction_36 _  = notHappyAtAll 

happyReduce_37 = happySpecReduce_1  14 happyReduction_37
happyReduction_37 _
	 =  HappyAbsSyn14
		 (Literal (BoolV True)
	)

happyReduce_38 = happySpecReduce_1  14 happyReduction_38
happyReduction_38 _
	 =  HappyAbsSyn14
		 (Literal (BoolV False)
	)

happyReduce_39 = happySpecReduce_1  14 happyReduction_39
happyReduction_39 _
	 =  HappyAbsSyn14
		 (Literal Undefined
	)

happyReduce_40 = happySpecReduce_1  14 happyReduction_40
happyReduction_40 (HappyTerminal (TokenIdent happy_var_1))
	 =  HappyAbsSyn14
		 (Variable happy_var_1
	)
happyReduction_40 _  = notHappyAtAll 

happyReduce_41 = happySpecReduce_3  14 happyReduction_41
happyReduction_41 _
	(HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn14
		 (happy_var_2
	)
happyReduction_41 _ _ _  = notHappyAtAll 

happyReduce_42 = happyReduce 4 14 happyReduction_42
happyReduction_42 (_ `HappyStk`
	(HappyAbsSyn15  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn14  happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn14
		 (Call happy_var_1 happy_var_3
	) `HappyStk` happyRest

happyReduce_43 = happySpecReduce_1  15 happyReduction_43
happyReduction_43 (HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn15
		 (happy_var_1
	)
happyReduction_43 _  = notHappyAtAll 

happyReduce_44 = happySpecReduce_0  15 happyReduction_44
happyReduction_44  =  HappyAbsSyn15
		 (Literal Undefined
	)

happyNewToken action sts stk [] =
	action 50 50 notHappyAtAll (HappyState action) sts stk []

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
	Symbol "." -> cont 46;
	TokenKeyword "this" -> cont 47;
	Symbol ":" -> cont 48;
	Symbol "," -> cont 49;
	_ -> happyError' (tk:tks)
	}

happyError_ 50 tk tks = happyError' tks
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


symbols = ["+", "-", "*", "/", "(", ")", "{", "}", ";", "==", "=", "<=", ">=", "<", ">", "||", "&&", "!", "@", ".", ":"]
keywords = ["function", "var", "if", "else", "true", "false", "mutable", "undefined", "return", "this"]
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

