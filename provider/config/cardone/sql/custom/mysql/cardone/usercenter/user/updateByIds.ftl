UPDATE c1_user SET END_DATE = NOW() WHERE INSTR(:ids, USER_ID) > 0