package com.github.flafjr;

import org.springframework.beans.factory.annotation.Value;

//https://www.baeldung.com/spring-value-defaults
public class AppConfig {
    @Value("${some.key:}")
    public String stringWithBlankDefaultValue;

    @Value("${some.key:true}")
    private boolean booleanWithDefaultValue;

    @Value("${some.key:42}")
    private int intWithDefaultValue;

    @Value("${some.key:one,two,three}")
    private String[] stringArrayWithDefaults;

    @Value("${some.key:1,2,3}")
    private int[] intArrayWithDefaults;

    @Value("#{systemProperties['some.key'] ?: 'my default system property value'}")
    private String spelWithDefaultValue;
}
