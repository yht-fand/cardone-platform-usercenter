<#include "insert.ftl">
on conflict (
<#assign prefixName = true>
<#if (index_address??)>
${prefixName?string('', ', ')}"address"
<#assign prefixName = false>
</#if>
<#if (index_areaCode??)>
${prefixName?string('', ', ')}"area_code"
<#assign prefixName = false>
</#if>
<#if (index_areaId??)>
${prefixName?string('', ', ')}"area_id"
<#assign prefixName = false>
</#if>
<#if (index_batchNo??)>
${prefixName?string('', ', ')}"batch_no"
<#assign prefixName = false>
</#if>
<#if (index_beginDate??)>
${prefixName?string('', ', ')}"begin_date"
<#assign prefixName = false>
</#if>
<#if (index_cityCode??)>
${prefixName?string('', ', ')}"city_code"
<#assign prefixName = false>
</#if>
<#if (index_cityId??)>
${prefixName?string('', ', ')}"city_id"
<#assign prefixName = false>
</#if>
<#if (index_countryCode??)>
${prefixName?string('', ', ')}"country_code"
<#assign prefixName = false>
</#if>
<#if (index_createdByCode??)>
${prefixName?string('', ', ')}"created_by_code"
<#assign prefixName = false>
</#if>
<#if (index_createdById??)>
${prefixName?string('', ', ')}"created_by_id"
<#assign prefixName = false>
</#if>
<#if (index_createdDate??)>
${prefixName?string('', ', ')}"created_date"
<#assign prefixName = false>
</#if>
<#if (index_dataStateCode??)>
${prefixName?string('', ', ')}"data_state_code"
<#assign prefixName = false>
</#if>
<#if (index_departmentCode??)>
${prefixName?string('', ', ')}"department_code"
<#assign prefixName = false>
</#if>
<#if (index_endDate??)>
${prefixName?string('', ', ')}"end_date"
<#assign prefixName = false>
</#if>
<#if (index_flagCode??)>
${prefixName?string('', ', ')}"flag_code"
<#assign prefixName = false>
</#if>
<#if (index_flagObjectCode??)>
${prefixName?string('', ', ')}"flag_object_code"
<#assign prefixName = false>
</#if>
<#if (index_isDefault??)>
${prefixName?string('', ', ')}"is_default"
<#assign prefixName = false>
</#if>
<#if (index_jsonData??)>
${prefixName?string('', ', ')}"json_data"
<#assign prefixName = false>
</#if>
<#if (index_lastModifiedByCode??)>
${prefixName?string('', ', ')}"last_modified_by_code"
<#assign prefixName = false>
</#if>
<#if (index_lastModifiedById??)>
${prefixName?string('', ', ')}"last_modified_by_id"
<#assign prefixName = false>
</#if>
<#if (index_lastModifiedDate??)>
${prefixName?string('', ', ')}"last_modified_date"
<#assign prefixName = false>
</#if>
<#if (index_orderBy??)>
${prefixName?string('', ', ')}"order_by_"
<#assign prefixName = false>
</#if>
<#if (index_orgCode??)>
${prefixName?string('', ', ')}"org_code"
<#assign prefixName = false>
</#if>
<#if (index_personalCode??)>
${prefixName?string('', ', ')}"personal_code"
<#assign prefixName = false>
</#if>
<#if (index_personalId??)>
${prefixName?string('', ', ')}"personal_id"
<#assign prefixName = false>
</#if>
<#if (index_provinceCode??)>
${prefixName?string('', ', ')}"province_code"
<#assign prefixName = false>
</#if>
<#if (index_provinceId??)>
${prefixName?string('', ', ')}"province_id"
<#assign prefixName = false>
</#if>
<#if (index_regionCode??)>
${prefixName?string('', ', ')}"region_code"
<#assign prefixName = false>
</#if>
<#if (index_regionId??)>
${prefixName?string('', ', ')}"region_id"
<#assign prefixName = false>
</#if>
<#if (index_siteCode??)>
${prefixName?string('', ', ')}"site_code"
<#assign prefixName = false>
</#if>
<#if (index_stateCode??)>
${prefixName?string('', ', ')}"state_code"
<#assign prefixName = false>
</#if>
<#if (index_systemInfoCode??)>
${prefixName?string('', ', ')}"system_info_code"
<#assign prefixName = false>
</#if>
<#if (index_typeCode??)>
${prefixName?string('', ', ')}"type_code"
<#assign prefixName = false>
</#if>
<#if (index_userAddressId??)>
${prefixName?string('', ', ')}"user_address_id"
<#assign prefixName = false>
</#if>
<#if (index_userCode??)>
${prefixName?string('', ', ')}"user_code"
<#assign prefixName = false>
</#if>
<#if (index_userId??)>
${prefixName?string('', ', ')}"user_id"
<#assign prefixName = false>
</#if>
<#if (index_version??)>
${prefixName?string('', ', ')}"version_"
<#assign prefixName = false>
</#if>
) do nothing