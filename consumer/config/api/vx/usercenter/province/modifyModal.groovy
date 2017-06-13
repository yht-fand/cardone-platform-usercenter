package api.vx.usercenter.province

import org.apache.commons.lang3.StringUtils
import top.cardone.usercenter.service.ProvinceService
import top.cardone.context.ApplicationContextHolder
import top.cardone.core.CodeException

class modifyModal {
    def input(input) {
        ["provinceId": input.provinceId]
    }

    def validation(input) {
//      if (StringUtils.isBlank(input?.provinceId)) {
//          throw new CodeException("provinceId required", "省份标识必填")
//      }
    }

    def func(input) {
		ApplicationContextHolder.getBean(ProvinceService.class).findOne(input)
    }

    def output(output) {
        def newOutput = [:]

		newOutput['batchNo'] = output['batch_no']
		newOutput['beginDate'] = output['begin_date']
		newOutput['countryCode'] = output['country_code']
		newOutput['createdByCode'] = output['created_by_code']
		newOutput['createdDate'] = output['created_date']
		newOutput['dataStateCode'] = output['data_state_code']
		newOutput['departmentCode'] = output['department_code']
		newOutput['endDate'] = output['end_date']
		newOutput['flagCode'] = output['flag_code']
		newOutput['flagObjectCode'] = output['flag_object_code']
		newOutput['jsonData'] = output['json_data']
		newOutput['lastModifiedByCode'] = output['last_modified_by_code']
		newOutput['lastModifiedDate'] = output['last_modified_date']
		newOutput['name'] = output['name']
		newOutput['orderBy'] = output['order_by_']
		newOutput['orgCode'] = output['org_code']
		newOutput['personalCode'] = output['personal_code']
		newOutput['provinceCode'] = output['province_code']
		newOutput['provinceId'] = output['province_id']
		newOutput['siteCode'] = output['site_code']
		newOutput['stateCode'] = output['state_code']
		newOutput['systemInfoCode'] = output['system_info_code']
		newOutput['version'] = output['version_']

        newOutput
    }
}