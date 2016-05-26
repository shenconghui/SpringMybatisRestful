package com.chinasoft.annotation;

import org.springframework.stereotype.Repository;

/**
 * Created by admin on 2016/5/25.
 */
@Repository
public @interface MybatisRepository {
    String value() default "";
}
