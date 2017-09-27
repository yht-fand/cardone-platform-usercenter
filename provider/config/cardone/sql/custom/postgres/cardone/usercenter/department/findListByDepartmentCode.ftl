SELECT d.DEPARTMENT_ID, d.DEPARTMENT_CODE, d.NAME, d.PARENT_ID, d.PARENT_CODE FROM  c1_department d
where d.state_code = '1' and d.data_state_code = '1'
<#if cardone.StringUtils.isNotBlank(departmentId)>
and (:departmentId = ANY(string_to_array(d.PARENT_TREE_ID, ',')) OR (d.DEPARTMENT_ID = :departmentId))
<#elseif cardone.StringUtils.isNotBlank(departmentCode)>
and (:departmentCode = ANY(string_to_array(d.PARENT_TREE_CODE, ',')) OR (d.DEPARTMENT_CODE = :departmentCode))
</#if>
<@cardone.permissionSql prefixName=false permission_departments=permission_departments  departmentColumnName="d.department_code" permission_users=permission_users userColumnName="d.personal_code" />
ORDER BY d.DEPARTMENT_CODE