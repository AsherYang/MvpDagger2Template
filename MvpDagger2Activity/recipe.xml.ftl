<?xml version="1.0"?>
<recipe>
    <#include "../common/recipe_manifest.xml.ftl" />

<#if generateLayout>
    <#include "../common/recipe_simple.xml.ftl" />
    <open file="${escapeXmlAttribute(resOut)}/layout/${layoutName}.xml" />
</#if>

    <instantiate from="root/src/app_package/MvpActivity.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/module/${moduleFileName}/${activityClass}.java" />

    <open file="${escapeXmlAttribute(srcOut)}/module/${moduleFileName}/${activityClass}.java" />


	<instantiate from="root/src/app_package/MvpComponent.java.ftl"
				   to="${escapeXmlAttribute(srcOut)}/module/${moduleFileName}/${componentClass}.java" />

	<instantiate from="root/src/app_package/MvpModule.java.ftl"
				   to="${escapeXmlAttribute(srcOut)}/module/${moduleFileName}/${moduleClass}.java" />

	<instantiate from="root/src/app_package/MvpPresenter.java.ftl"
				   to="${escapeXmlAttribute(srcOut)}/module/${moduleFileName}/${presenterClass}.java" />

	<instantiate from="root/src/app_package/MvpPresenterImpl.java.ftl"
				   to="${escapeXmlAttribute(srcOut)}/module/${moduleFileName}/${presenterClass}Impl.java" />

	<instantiate from="root/src/app_package/MvpView.java.ftl"
				   to="${escapeXmlAttribute(srcOut)}/module/${moduleFileName}/${viewClass}.java" />
</recipe>
