package top.cardone.usercenter.service;

import org.springframework.cache.annotation.CacheEvict;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.data.domain.Page;
import top.cardone.cache.Caches;
import top.cardone.data.service.PageService;

import java.util.List;
import java.util.Map;

/**
 * 区域服务
 *
 * @author yao hai tao
 */
public interface RegionService extends PageService {
    /**
     * @see top.cardone.usercenter.service.RegionService#page
     */
    @Cacheable(value = "top.cardone.usercenter.service.RegionService", key = Caches.KEY_1)
    Page<Map<String, Object>> pageCache(Object page);

    /**
     * @see top.cardone.usercenter.service.RegionService#page
     */
    @Cacheable(value = "top.cardone.usercenter.service.RegionService", key = Caches.KEY_2)
    <P> Page<P> pageCache(Class<P> mappedClass, Object page);

    /**
     * @see top.cardone.usercenter.service.RegionService#findList
     */
    @Cacheable(value = "top.cardone.usercenter.service.RegionService", key = Caches.KEY_2)
    <P> List<P> findListCache(Class<P> mappedClass, Object findList);

    /**
     * @see top.cardone.usercenter.service.RegionService#findOne
     */
    @Cacheable(value = "top.cardone.usercenter.service.RegionService", key = Caches.KEY_2)
    <P> P findOneCache(Class<P> mappedClass, Object findOne);

    /**
     * @see top.cardone.usercenter.service.RegionService#readList
     */
    @Cacheable(value = "top.cardone.usercenter.service.RegionService", key = Caches.KEY_2)
    <R> List<R> readListCache(Class<R> requiredType, Object readList);

    /**
     * @see top.cardone.usercenter.service.RegionService#readOne
     */
    @Cacheable(value = "top.cardone.usercenter.service.RegionService", key = Caches.KEY_2)
    <R> R readOneCache(Class<R> requiredType, Object readOne);

    /**
     * @see top.cardone.usercenter.service.RegionService#delete
     */
    @CacheEvict(value = "top.cardone.usercenter.service.RegionService", allEntries = true)
    int deleteCache(Object delete);

    /**
     * @see top.cardone.usercenter.service.RegionService#deleteAll
     */
    @CacheEvict(value = "top.cardone.usercenter.service.RegionService", allEntries = true)
    int deleteAllCache();

    /**
     * @see top.cardone.usercenter.service.RegionService#deleteByIds
     */
    @CacheEvict(value = "top.cardone.usercenter.service.RegionService", allEntries = true)
    int deleteByIdsCache(Object ids);

    /**
     * @see top.cardone.usercenter.service.RegionService#deleteList
     */
    @CacheEvict(value = "top.cardone.usercenter.service.RegionService", allEntries = true)
    int[] deleteListCache(List<Object> deleteList);

    /**
     * @see top.cardone.usercenter.service.RegionService#findList
     */
    @Cacheable(value = "top.cardone.usercenter.service.RegionService", key = Caches.KEY_1)
    List<Map<String, Object>> findListCache(Object findList);

    /**
     * @see top.cardone.usercenter.service.RegionService#findOne
     */
    @Cacheable(value = "top.cardone.usercenter.service.RegionService", key = Caches.KEY_1)
    Map<String, Object> findOneCache(Object findOne);

    /**
     * @see top.cardone.usercenter.service.RegionService#insert
     */
    @CacheEvict(value = "top.cardone.usercenter.service.RegionService", allEntries = true)
    int insertCache(Object insert);

    /**
     * @see top.cardone.usercenter.service.RegionService#insertByNotExists
     */
    @CacheEvict(value = "top.cardone.usercenter.service.RegionService", allEntries = true)
    int insertByNotExistsCache(Object insert);

    /**
     * @see top.cardone.usercenter.service.RegionService#insertList
     */
    @CacheEvict(value = "top.cardone.usercenter.service.RegionService", allEntries = true)
    int[] insertListCache(List<Object> insertList);

    /**
     * @see top.cardone.usercenter.service.RegionService#insertListByNotExists
     */
    @CacheEvict(value = "top.cardone.usercenter.service.RegionService", allEntries = true)
    int[] insertListByNotExistsCache(List<Object> insertList);

    /**
     * @see top.cardone.usercenter.service.RegionService#readList
     */
    @Cacheable(value = "top.cardone.usercenter.service.RegionService", key = Caches.KEY_1)
    List<Object> readListCache(Object readList);

    /**
     * @see top.cardone.usercenter.service.RegionService#readOne
     */
    @Cacheable(value = "top.cardone.usercenter.service.RegionService", key = Caches.KEY_1)
    Object readOneCache(Object readOne);

    /**
     * @see top.cardone.usercenter.service.RegionService#save
     */
    @CacheEvict(value = "top.cardone.usercenter.service.RegionService", allEntries = true)
    Integer saveCache(Object save);

    /**
     * @see top.cardone.usercenter.service.RegionService#update
     */
    @CacheEvict(value = "top.cardone.usercenter.service.RegionService", allEntries = true)
    int updateCache(Object update);

    /**
     * @see top.cardone.usercenter.service.RegionService#updateList
     */
    @CacheEvict(value = "top.cardone.usercenter.service.RegionService", allEntries = true)
    int[] updateListCache(List<Object> updateList);

    /**
     * @see top.cardone.usercenter.service.RegionService#saveList
     */
    @CacheEvict(value = "top.cardone.usercenter.service.RegionService", allEntries = true)
    int[][] saveListCache(List<Object> saveList);

    /**
     * 查询区域对象
     *
     * @param regionId 区域标识
     * @return 区域对象
     */
    Map<String, Object> findOneByRegionId(Object regionId);
}