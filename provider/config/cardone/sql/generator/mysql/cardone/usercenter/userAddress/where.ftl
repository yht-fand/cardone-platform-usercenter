<#assign prefixName = 'WHERE'>
<#if (where_and_eq_areaCode??)>
<#if (where_and_eq_areaCode_value??)>
${prefixName} `AREA_CODE` = :where_and_eq_areaCode_value
<#else>
${prefixName} `AREA_CODE` IS NULL
</#if>
<#assign prefixName = 'AND'>
</#if>
<#if (where_and_eq_beginDate??)>
<#if (where_and_eq_beginDate_value??)>
${prefixName} `BEGIN_DATE` = :where_and_eq_beginDate_value
<#else>
${prefixName} `BEGIN_DATE` IS NULL
</#if>
<#assign prefixName = 'AND'>
</#if>
<#if (where_and_eq_cityCode??)>
<#if (where_and_eq_cityCode_value??)>
${prefixName} `CITY_CODE` = :where_and_eq_cityCode_value
<#else>
${prefixName} `CITY_CODE` IS NULL
</#if>
<#assign prefixName = 'AND'>
</#if>
<#if (where_and_eq_countryCode??)>
<#if (where_and_eq_countryCode_value??)>
${prefixName} `COUNTRY_CODE` = :where_and_eq_countryCode_value
<#else>
${prefixName} `COUNTRY_CODE` IS NULL
</#if>
<#assign prefixName = 'AND'>
</#if>
<#if (where_and_eq_createdByCode??)>
<#if (where_and_eq_createdByCode_value??)>
${prefixName} `CREATED_BY_CODE` = :where_and_eq_createdByCode_value
<#else>
${prefixName} `CREATED_BY_CODE` IS NULL
</#if>
<#assign prefixName = 'AND'>
</#if>
<#if (where_and_eq_createdDate??)>
<#if (where_and_eq_createdDate_value??)>
${prefixName} `CREATED_DATE` = :where_and_eq_createdDate_value
<#else>
${prefixName} `CREATED_DATE` IS NULL
</#if>
<#assign prefixName = 'AND'>
</#if>
<#if (where_and_eq_dataStateCode??)>
<#if (where_and_eq_dataStateCode_value??)>
${prefixName} `DATA_STATE_CODE` = :where_and_eq_dataStateCode_value
<#else>
${prefixName} `DATA_STATE_CODE` IS NULL
</#if>
<#assign prefixName = 'AND'>
</#if>
<#if (where_and_eq_departmentCode??)>
<#if (where_and_eq_departmentCode_value??)>
${prefixName} `DEPARTMENT_CODE` = :where_and_eq_departmentCode_value
<#else>
${prefixName} `DEPARTMENT_CODE` IS NULL
</#if>
<#assign prefixName = 'AND'>
</#if>
<#if (where_and_eq_endDate??)>
<#if (where_and_eq_endDate_value??)>
${prefixName} `END_DATE` = :where_and_eq_endDate_value
<#else>
${prefixName} `END_DATE` IS NULL
</#if>
<#assign prefixName = 'AND'>
</#if>
<#if (where_and_eq_flagCode??)>
<#if (where_and_eq_flagCode_value??)>
${prefixName} `FLAG_CODE` = :where_and_eq_flagCode_value
<#else>
${prefixName} `FLAG_CODE` IS NULL
</#if>
<#assign prefixName = 'AND'>
</#if>
<#if (where_and_eq_flagObjectCode??)>
<#if (where_and_eq_flagObjectCode_value??)>
${prefixName} `FLAG_OBJECT_CODE` = :where_and_eq_flagObjectCode_value
<#else>
${prefixName} `FLAG_OBJECT_CODE` IS NULL
</#if>
<#assign prefixName = 'AND'>
</#if>
<#if (where_and_eq_isDefault??)>
<#if (where_and_eq_isDefault_value??)>
${prefixName} `IS_DEFAULT` = :where_and_eq_isDefault_value
<#else>
${prefixName} `IS_DEFAULT` IS NULL
</#if>
<#assign prefixName = 'AND'>
</#if>
<#if (where_and_eq_jsonData??)>
<#if (where_and_eq_jsonData_value??)>
${prefixName} `JSON_DATA` = :where_and_eq_jsonData_value
<#else>
${prefixName} `JSON_DATA` IS NULL
</#if>
<#assign prefixName = 'AND'>
</#if>
<#if (where_and_eq_lastModifiedByCode??)>
<#if (where_and_eq_lastModifiedByCode_value??)>
${prefixName} `LAST_MODIFIED_BY_CODE` = :where_and_eq_lastModifiedByCode_value
<#else>
${prefixName} `LAST_MODIFIED_BY_CODE` IS NULL
</#if>
<#assign prefixName = 'AND'>
</#if>
<#if (where_and_eq_lastModifiedDate??)>
<#if (where_and_eq_lastModifiedDate_value??)>
${prefixName} `LAST_MODIFIED_DATE` = :where_and_eq_lastModifiedDate_value
<#else>
${prefixName} `LAST_MODIFIED_DATE` IS NULL
</#if>
<#assign prefixName = 'AND'>
</#if>
<#if (where_and_eq_order??)>
<#if (where_and_eq_order_value??)>
${prefixName} `ORDER_` = :where_and_eq_order_value
<#else>
${prefixName} `ORDER_` IS NULL
</#if>
<#assign prefixName = 'AND'>
</#if>
<#if (where_and_eq_orgCode??)>
<#if (where_and_eq_orgCode_value??)>
${prefixName} `ORG_CODE` = :where_and_eq_orgCode_value
<#else>
${prefixName} `ORG_CODE` IS NULL
</#if>
<#assign prefixName = 'AND'>
</#if>
<#if (where_and_eq_provinceCode??)>
<#if (where_and_eq_provinceCode_value??)>
${prefixName} `PROVINCE_CODE` = :where_and_eq_provinceCode_value
<#else>
${prefixName} `PROVINCE_CODE` IS NULL
</#if>
<#assign prefixName = 'AND'>
</#if>
<#if (where_and_eq_regionCode??)>
<#if (where_and_eq_regionCode_value??)>
${prefixName} `REGION_CODE` = :where_and_eq_regionCode_value
<#else>
${prefixName} `REGION_CODE` IS NULL
</#if>
<#assign prefixName = 'AND'>
</#if>
<#if (where_and_eq_siteCode??)>
<#if (where_and_eq_siteCode_value??)>
${prefixName} `SITE_CODE` = :where_and_eq_siteCode_value
<#else>
${prefixName} `SITE_CODE` IS NULL
</#if>
<#assign prefixName = 'AND'>
</#if>
<#if (where_and_eq_stateCode??)>
<#if (where_and_eq_stateCode_value??)>
${prefixName} `STATE_CODE` = :where_and_eq_stateCode_value
<#else>
${prefixName} `STATE_CODE` IS NULL
</#if>
<#assign prefixName = 'AND'>
</#if>
<#if (where_and_eq_systemInfoCode??)>
<#if (where_and_eq_systemInfoCode_value??)>
${prefixName} `SYSTEM_INFO_CODE` = :where_and_eq_systemInfoCode_value
<#else>
${prefixName} `SYSTEM_INFO_CODE` IS NULL
</#if>
<#assign prefixName = 'AND'>
</#if>
<#if (where_and_eq_typeCode??)>
<#if (where_and_eq_typeCode_value??)>
${prefixName} `TYPE_CODE` = :where_and_eq_typeCode_value
<#else>
${prefixName} `TYPE_CODE` IS NULL
</#if>
<#assign prefixName = 'AND'>
</#if>
<#if (where_and_eq_userAddressId??)>
<#if (where_and_eq_userAddressId_value??)>
${prefixName} `USER_ADDRESS_ID` = :where_and_eq_userAddressId_value
<#else>
${prefixName} `USER_ADDRESS_ID` IS NULL
</#if>
<#assign prefixName = 'AND'>
</#if>
<#if (where_and_eq_userCode??)>
<#if (where_and_eq_userCode_value??)>
${prefixName} `USER_CODE` = :where_and_eq_userCode_value
<#else>
${prefixName} `USER_CODE` IS NULL
</#if>
<#assign prefixName = 'AND'>
</#if>
<#if (where_and_eq_version??)>
<#if (where_and_eq_version_value??)>
${prefixName} `VERSION_` = :where_and_eq_version_value
<#else>
${prefixName} `VERSION_` IS NULL
</#if>
<#assign prefixName = 'AND'>
</#if>