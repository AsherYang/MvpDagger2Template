<recipe>

    <#if !(hasDependency('com.google.dagger:dagger'))>
	<dependency mavenUrl="com.google.dagger:dagger-compiler:2.0.2"/>
	<dependency mavenUrl="com.google.dagger:dagger:2.0.2"/>
	<dependency mavenUrl="org.glassfish:javax.annotation:10.0-b28"/>
    </#if>
</recipe>