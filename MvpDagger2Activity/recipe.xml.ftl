<?xml version="1.0"?>
<recipe>
    <#include "../common/recipe_manifest.xml.ftl" />

<#if generateLayout>
    <#include "../common/recipe_simple.xml.ftl" />
    <open file="${escapeXmlAttribute(resOut)}/layout/${layoutName}.xml" />
</#if>

    <instantiate from="root/src/app_package/MvpActivity.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/module/${underscoreToCamelCase(classToResource(activityClass))}/${activityClass}.java" />

    <open file="${escapeXmlAttribute(srcOut)}/module/${underscoreToCamelCase(classToResource(activityClass))}/${activityClass}.java" />


	<instantiate from="root/src/app_package/MvpComponent.java.ftl"
				   to="${escapeXmlAttribute(srcOut)}/module/${underscoreToCamelCase(classToResource(activityClass))}/${componentClass}.java" />

	<instantiate from="root/src/app_package/MvpModule.java.ftl"
				   to="${escapeXmlAttribute(srcOut)}/module/${underscoreToCamelCase(classToResource(activityClass))}/${moduleClass}.java" />

	<instantiate from="root/src/app_package/MvpPresenter.java.ftl"
				   to="${escapeXmlAttribute(srcOut)}/module/${underscoreToCamelCase(classToResource(activityClass))}/${presenterClass}.java" />

	<instantiate from="root/src/app_package/MvpPresenterImpl.java.ftl"
				   to="${escapeXmlAttribute(srcOut)}/module/${underscoreToCamelCase(classToResource(activityClass))}/${presenterClass}Impl.java" />

	<instantiate from="root/src/app_package/MvpView.java.ftl"
				   to="${escapeXmlAttribute(srcOut)}/module/${underscoreToCamelCase(classToResource(activityClass))}/${viewClass}.java" />
</recipe>
