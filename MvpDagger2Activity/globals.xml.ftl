<?xml version="1.0"?>
<globals>
    <global id="hasNoActionBar" type="boolean" value="false" />
    <global id="parentActivityClass" value="" />
    <global id="simpleLayoutName" value="${layoutName}" />
    <global id="excludeMenu" type="boolean" value="true" />
    <global id="generateActivityTitle" type="boolean" value="false" />
    <#-- define moduleFileName @see http://blog.csdn.net/fhx007/article/details/7902040/ --> 
    <global id="moduleFileName" value="${underscoreToCamelCase(classToResource(activityClass))?uncap_first}" />
    <#include "../common/common_globals.xml.ftl" />
</globals>
