package top.cardone.usercenter.service;

import org.springframework.cache.annotation.CacheEvict;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.data.domain.Page;
import top.cardone.cache.Caches;
import top.cardone.data.service.PageService;

import java.util.List;
import java.util.Map;

/**
 * 开放用户服务
 *
 * @author yao hai tao
 */
public interface OpenUserService extends PageService {
    /**
     * @see top.cardone.usercenter.service.OpenUserService#page
     */
    @Cacheable(value = "top.cardone.usercenter.service.OpenUserService", key = Caches.KEY_1)
    Page<Map<String, Object>> pageCache(Object page);

    /**
     * @see top.cardone.usercenter.service.OpenUserService#page
     */
    @Cacheable(value = "top.cardone.usercenter.service.OpenUserService", key = Caches.KEY_2)
    <P> Page<P> pageCache(Class<P> mappedClass, Object page);

    /**
     * @see top.cardone.usercenter.service.OpenUserService#findList
     */
    @Cacheable(value = "top.cardone.usercenter.service.OpenUserService", key = Caches.KEY_2)
    <P> List<P> findListCache(Class<P> mappedClass, Object findList);

    /**
     * @see top.cardone.usercenter.service.OpenUserService#findOne
     */
    @Cacheable(value = "top.cardone.usercenter.service.OpenUserService", key = Caches.KEY_2)
    <P> P findOneCache(Class<P> mappedClass, Object findOne);

    /**
     * @see top.cardone.usercenter.service.OpenUserService#readList
     */
    @Cacheable(value = "top.cardone.usercenter.service.OpenUserService", key = Caches.KEY_2)
    <R> List<R> readListCache(Class<R> requiredType, Object readList);

    /**
     * @see top.cardone.usercenter.service.OpenUserService#readOne
     */
    @Cacheable(value = "top.cardone.usercenter.service.OpenUserService", key = Caches.KEY_2)
    <R> R readOneCache(Class<R> requiredType, Object readOne);

    /**
     * @see top.cardone.usercenter.service.OpenUserService#delete
     */
    @CacheEvict(value = "top.cardone.usercenter.service.OpenUserService", allEntries = true)
    int deleteCache(Object delete);

    /**
     * @see top.cardone.usercenter.service.OpenUserService#deleteAll
     */
    @CacheEvict(value = "top.cardone.usercenter.service.OpenUserService", allEntries = true)
    int deleteAllCache();

    /**
     * @see top.cardone.usercenter.service.OpenUserService#deleteByIds
     */
    @CacheEvict(value = "top.cardone.usercenter.service.OpenUserService", allEntries = true)
    int deleteByIdsCache(Object ids);

    /**
     * @see top.cardone.usercenter.service.OpenUserService#deleteList
     */
    @CacheEvict(value = "top.cardone.usercenter.service.OpenUserService", allEntries = true)
    int[] deleteListCache(List<Object> deleteList);

    /**
     * @see top.cardone.usercenter.service.OpenUserService#findList
     */
    @Cacheable(value = "top.cardone.usercenter.service.OpenUserService", key = Caches.KEY_1)
    List<Map<String, Object>> findListCache(Object findList);

    /**
     * @see top.cardone.usercenter.service.OpenUserService#findOne
     */
    @Cacheable(value = "top.cardone.usercenter.service.OpenUserService", key = Caches.KEY_1)
    Map<String, Object> findOneCache(Object findOne);

    /**
     * @see top.cardone.usercenter.service.OpenUserService#insert
     */
    @CacheEvict(value = "top.cardone.usercenter.service.OpenUserService", allEntries = true)
    int insertCache(Object insert);

    /**
     * @see top.cardone.usercenter.service.OpenUserService#insertByNotExists
     */
    @CacheEvict(value = "top.cardone.usercenter.service.OpenUserService", allEntries = true)
    int insertByNotExistsCache(Object insert);

    /**
     * @see top.cardone.usercenter.service.OpenUserService#insertList
     */
    @CacheEvict(value = "top.cardone.usercenter.service.OpenUserService", allEntries = true)
    int[] insertListCache(List<Object> insertList);

    /**
     * @see top.cardone.usercenter.service.OpenUserService#insertListByNotExists
     */
    @CacheEvict(value = "top.cardone.usercenter.service.OpenUserService", allEntries = true)
    int[] insertListByNotExistsCache(List<Object> insertList);

    /**
     * @see top.cardone.usercenter.service.OpenUserService#readList
     */
    @Cacheable(value = "top.cardone.usercenter.service.OpenUserService", key = Caches.KEY_1)
    List<Object> readListCache(Object readList);

    /**
     * @see top.cardone.usercenter.service.OpenUserService#readOne
     */
    @Cacheable(value = "top.cardone.usercenter.service.OpenUserService", key = Caches.KEY_1)
    Object readOneCache(Object readOne);

    /**
     * @see top.cardone.usercenter.service.OpenUserService#save
     */
    @CacheEvict(value = "top.cardone.usercenter.service.OpenUserService", allEntries = true)
    Integer saveCache(Object save);

    /**
     * @see top.cardone.usercenter.service.OpenUserService#update
     */
    @CacheEvict(value = "top.cardone.usercenter.service.OpenUserService", allEntries = true)
    int updateCache(Object update);

    /**
     * @see top.cardone.usercenter.service.OpenUserService#updateList
     */
    @CacheEvict(value = "top.cardone.usercenter.service.OpenUserService", allEntries = true)
    int[] updateListCache(List<Object> updateList);

    /**
     * 查询开放用户对象
     *
     * @param openUserId 开放用户标识
     * @return 开放用户对象
     */
    Map<String, Object> findOneByOpenUserId(Object openUserId);
}