INSERT
INTO c1_user_address
(<#assign prefixName = ' '>
<#if (insert_areaCode??) && (insert_areaCode_value??)>
${prefixName} area_code
<#assign prefixName = ','>
</#if>
<#if (insert_beginDate??) && (insert_beginDate_value??)>
${prefixName} begin_date
<#assign prefixName = ','>
</#if>
<#if (insert_cityCode??) && (insert_cityCode_value??)>
${prefixName} city_code
<#assign prefixName = ','>
</#if>
<#if (insert_countryCode??) && (insert_countryCode_value??)>
${prefixName} country_code
<#assign prefixName = ','>
</#if>
<#if (insert_createdByCode??) && (insert_createdByCode_value??)>
${prefixName} created_by_code
<#assign prefixName = ','>
</#if>
<#if (insert_createdDate??) && (insert_createdDate_value??)>
${prefixName} created_date
<#assign prefixName = ','>
</#if>
<#if (insert_dataStateCode??) && (insert_dataStateCode_value??)>
${prefixName} data_state_code
<#assign prefixName = ','>
</#if>
<#if (insert_departmentCode??) && (insert_departmentCode_value??)>
${prefixName} department_code
<#assign prefixName = ','>
</#if>
<#if (insert_endDate??) && (insert_endDate_value??)>
${prefixName} end_date
<#assign prefixName = ','>
</#if>
<#if (insert_flagCode??) && (insert_flagCode_value??)>
${prefixName} flag_code
<#assign prefixName = ','>
</#if>
<#if (insert_flagObjectCode??) && (insert_flagObjectCode_value??)>
${prefixName} flag_object_code
<#assign prefixName = ','>
</#if>
<#if (insert_isDefault??) && (insert_isDefault_value??)>
${prefixName} is_default
<#assign prefixName = ','>
</#if>
<#if (insert_jsonData??) && (insert_jsonData_value??)>
${prefixName} json_data
<#assign prefixName = ','>
</#if>
<#if (insert_lastModifiedByCode??) && (insert_lastModifiedByCode_value??)>
${prefixName} last_modified_by_code
<#assign prefixName = ','>
</#if>
<#if (insert_lastModifiedDate??) && (insert_lastModifiedDate_value??)>
${prefixName} last_modified_date
<#assign prefixName = ','>
</#if>
<#if (insert_order??) && (insert_order_value??)>
${prefixName} order_
<#assign prefixName = ','>
</#if>
<#if (insert_orgCode??) && (insert_orgCode_value??)>
${prefixName} org_code
<#assign prefixName = ','>
</#if>
<#if (insert_provinceCode??) && (insert_provinceCode_value??)>
${prefixName} province_code
<#assign prefixName = ','>
</#if>
<#if (insert_regionCode??) && (insert_regionCode_value??)>
${prefixName} region_code
<#assign prefixName = ','>
</#if>
<#if (insert_siteCode??) && (insert_siteCode_value??)>
${prefixName} site_code
<#assign prefixName = ','>
</#if>
<#if (insert_stateCode??) && (insert_stateCode_value??)>
${prefixName} state_code
<#assign prefixName = ','>
</#if>
<#if (insert_systemInfoCode??) && (insert_systemInfoCode_value??)>
${prefixName} system_info_code
<#assign prefixName = ','>
</#if>
<#if (insert_typeCode??) && (insert_typeCode_value??)>
${prefixName} type_code
<#assign prefixName = ','>
</#if>
<#if (insert_userAddressId??) && (insert_userAddressId_value??)>
${prefixName} user_address_id
<#assign prefixName = ','>
</#if>
<#if (insert_userCode??) && (insert_userCode_value??)>
${prefixName} user_code
<#assign prefixName = ','>
</#if>
<#if (insert_version??) && (insert_version_value??)>
${prefixName} version_
<#assign prefixName = ','>
</#if>
)
VALUES
(<#assign prefixName = ' '>
<#if (insert_areaCode??) && (insert_areaCode_value??)>
${prefixName} :insert_areaCode_value
<#assign prefixName = ','>
</#if>
<#if (insert_beginDate??) && (insert_beginDate_value??)>
${prefixName} :insert_beginDate_value
<#assign prefixName = ','>
</#if>
<#if (insert_cityCode??) && (insert_cityCode_value??)>
${prefixName} :insert_cityCode_value
<#assign prefixName = ','>
</#if>
<#if (insert_countryCode??) && (insert_countryCode_value??)>
${prefixName} :insert_countryCode_value
<#assign prefixName = ','>
</#if>
<#if (insert_createdByCode??) && (insert_createdByCode_value??)>
${prefixName} :insert_createdByCode_value
<#assign prefixName = ','>
</#if>
<#if (insert_createdDate??) && (insert_createdDate_value??)>
${prefixName} :insert_createdDate_value
<#assign prefixName = ','>
</#if>
<#if (insert_dataStateCode??) && (insert_dataStateCode_value??)>
${prefixName} :insert_dataStateCode_value
<#assign prefixName = ','>
</#if>
<#if (insert_departmentCode??) && (insert_departmentCode_value??)>
${prefixName} :insert_departmentCode_value
<#assign prefixName = ','>
</#if>
<#if (insert_endDate??) && (insert_endDate_value??)>
${prefixName} :insert_endDate_value
<#assign prefixName = ','>
</#if>
<#if (insert_flagCode??) && (insert_flagCode_value??)>
${prefixName} :insert_flagCode_value
<#assign prefixName = ','>
</#if>
<#if (insert_flagObjectCode??) && (insert_flagObjectCode_value??)>
${prefixName} :insert_flagObjectCode_value
<#assign prefixName = ','>
</#if>
<#if (insert_isDefault??) && (insert_isDefault_value??)>
${prefixName} :insert_isDefault_value
<#assign prefixName = ','>
</#if>
<#if (insert_jsonData??) && (insert_jsonData_value??)>
${prefixName} :insert_jsonData_value
<#assign prefixName = ','>
</#if>
<#if (insert_lastModifiedByCode??) && (insert_lastModifiedByCode_value??)>
${prefixName} :insert_lastModifiedByCode_value
<#assign prefixName = ','>
</#if>
<#if (insert_lastModifiedDate??) && (insert_lastModifiedDate_value??)>
${prefixName} :insert_lastModifiedDate_value
<#assign prefixName = ','>
</#if>
<#if (insert_order??) && (insert_order_value??)>
${prefixName} :insert_order_value
<#assign prefixName = ','>
</#if>
<#if (insert_orgCode??) && (insert_orgCode_value??)>
${prefixName} :insert_orgCode_value
<#assign prefixName = ','>
</#if>
<#if (insert_provinceCode??) && (insert_provinceCode_value??)>
${prefixName} :insert_provinceCode_value
<#assign prefixName = ','>
</#if>
<#if (insert_regionCode??) && (insert_regionCode_value??)>
${prefixName} :insert_regionCode_value
<#assign prefixName = ','>
</#if>
<#if (insert_siteCode??) && (insert_siteCode_value??)>
${prefixName} :insert_siteCode_value
<#assign prefixName = ','>
</#if>
<#if (insert_stateCode??) && (insert_stateCode_value??)>
${prefixName} :insert_stateCode_value
<#assign prefixName = ','>
</#if>
<#if (insert_systemInfoCode??) && (insert_systemInfoCode_value??)>
${prefixName} :insert_systemInfoCode_value
<#assign prefixName = ','>
</#if>
<#if (insert_typeCode??) && (insert_typeCode_value??)>
${prefixName} :insert_typeCode_value
<#assign prefixName = ','>
</#if>
<#if (insert_userAddressId??) && (insert_userAddressId_value??)>
${prefixName} :insert_userAddressId_value
<#assign prefixName = ','>
</#if>
<#if (insert_userCode??) && (insert_userCode_value??)>
${prefixName} :insert_userCode_value
<#assign prefixName = ','>
</#if>
<#if (insert_version??) && (insert_version_value??)>
${prefixName} :insert_version_value
<#assign prefixName = ','>
</#if>
)