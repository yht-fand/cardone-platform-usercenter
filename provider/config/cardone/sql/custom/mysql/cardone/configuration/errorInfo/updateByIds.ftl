UPDATE c1_error_info SET END_DATE = NOW() WHERE INSTR(:ids, errorInfoId) > 0