package com.donkeycode.core.validation;

import javax.validation.ConstraintValidator;
import javax.validation.ConstraintValidatorContext;

import org.apache.commons.lang3.StringUtils;

import com.donkeycode.core.utils.JSONUtils;

public class CheckJsonClass implements ConstraintValidator<CheckJson, String> {

    @Override
    public void initialize(CheckJson constraintAnnotation) {
        constraintAnnotation.forbidden();
    }

    @Override
    public boolean isValid(String json, ConstraintValidatorContext constraintValidatorContext) {

        if (StringUtils.isNoneBlank(json) && JSONUtils.isJson(json)) {
            return true;
        }
        return false;
    }
}
 