package cn.qky.classgroup.utils;

import cn.hutool.core.util.StrUtil;
import cn.qky.classgroup.entity.BaseEntity;
import cn.qky.classgroup.vo.PageVo;
import lombok.extern.slf4j.Slf4j;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.jpa.domain.Specification;
import org.springframework.stereotype.Component;

import javax.persistence.criteria.Predicate;
import java.lang.reflect.Field;

/**
 * @Author: Edwin
 * @Description: jpa查询条件工具类
 */
@Slf4j
@Component
public class SpecificationUtil<E extends BaseEntity> {
    /**
     * 将实体转化成specification
     * @param entity
     * @return
     */
    public Specification<E> entityToSpecification(E entity) {
       return  (Specification<E>) (root, query, cb) -> {
            Predicate allPredicate = null;
            for (Field field : entity.getClass().getDeclaredFields()) {
                field.setAccessible(true);
                try {
                    String name = field.getName();
                    Object value =  field.get(entity);
                    if(value!=null&&!name.equals("serialVersionUID")){
                        Predicate predicate = cb.equal(root.get(field.getName()).as(String.class), field.get(entity)+"");
                        allPredicate = allPredicate==null?predicate: cb.and(allPredicate,predicate);
                    }
                } catch (IllegalAccessException e) {
                    e.printStackTrace();
                }
            }
            return allPredicate;
        };
    }

    /**
     * 获取分页设置
     * @param page
     * @return
     */
    public static Pageable initPage(PageVo page) {
        Pageable pageable;
        int pageNumber = page.getPageNumber();
        int pageSize = page.getPageSize();
        String sort = page.getSort();
        String order = page.getOrder();

        if (pageNumber < 1) {
            pageNumber = 1;
        }
        if (pageSize < 1) {
            pageSize = 10;
        }
        if (StrUtil.isNotBlank(sort)) {
            Sort.Direction d;
            if (StrUtil.isBlank(order)) {
                d = Sort.Direction.DESC;
            } else {
                d = Sort.Direction.valueOf(order.toUpperCase());
            }
            Sort s = new Sort(d, sort);
            pageable = PageRequest.of(pageNumber - 1, pageSize, s);
        } else {
            pageable = PageRequest.of(pageNumber - 1, pageSize);
        }
        return pageable;
    }

}
