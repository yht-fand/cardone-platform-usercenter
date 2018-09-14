package top.cardone.usercenter.action

import com.google.common.collect.Lists
import org.apache.commons.collections.MapUtils
import org.apache.commons.lang.StringUtils
import org.springframework.core.task.TaskExecutor
import org.springframework.scheduling.support.TaskUtils
import top.cardone.authority.service.UserPermissionService
import top.cardone.authority.service.UserRoleService
import top.cardone.cache.Cache
import top.cardone.context.ApplicationContextHolder
import top.cardone.context.event.SimpleEvent
import top.cardone.core.util.action.Action1

class ChageUserAction implements Action1<SimpleEvent> {
    @Override
    void action(SimpleEvent simpleEvent) {
        ApplicationContextHolder.getBean(TaskExecutor.class, "slowTaskExecutor").execute(TaskUtils.decorateTaskWithErrorHandler({
            taskAction(simpleEvent)
        }, null, true))
    }

    void taskAction(SimpleEvent simpleEvent) {
        if (top.cardone.context.util.StringUtils.matchs(Lists.newArrayList("insertList*", "saveList*", "updateList*"), simpleEvent.getFlags()[1])) {
            def users = simpleEvent.getArgs()[0]

            if (!(users instanceof List)) {
                return
            }

            for (def user : users) {
                if (!(user instanceof Map)) {
                    return
                }

                this.generateData(user)
            }
        } else if (top.cardone.context.util.StringUtils.matchs(Lists.newArrayList("insert*", "save*", "update*"), simpleEvent.getFlags()[1])) {
            def user = simpleEvent.getArgs()[0]

            if (!(user instanceof Map)) {
                return
            }

            this.generateData(user)
        }
    }

    void generateData(Map user) {
        def userId = MapUtils.getString(user, "userId")

        def userCode = MapUtils.getString(user, "userCode")

        if (StringUtils.isNotBlank(userId)) {
            ApplicationContextHolder.getBean(UserRoleService.class).generateDataByUserId(userId)
            ApplicationContextHolder.getBean(UserPermissionService.class).generateDataByUserId(userId)

            Thread.sleep(3000)

            if (StringUtils.isNotBlank(userCode)) {
                ApplicationContextHolder.getBean(Action1.class, "top/cardone/usercenter/action/EvictUserCacheAction").action(userCode)
            }

            return
        }

        if (StringUtils.isNotBlank(userCode)) {
            ApplicationContextHolder.getBean(UserRoleService.class).generateDataByUserCode(userCode)
            ApplicationContextHolder.getBean(UserPermissionService.class).generateDataByUserCode(userCode)

            Thread.sleep(3000)

            ApplicationContextHolder.getBean(Action1.class, "top/cardone/usercenter/action/EvictUserCacheAction").action(userCode)
        }
    }


}