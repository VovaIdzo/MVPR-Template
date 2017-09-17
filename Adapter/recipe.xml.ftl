<?xml version="1.0"?>
<recipe>
 
	<instantiate from="src/app_package/Adapter.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${className}Adapter.java" />

	<instantiate from="src/app_package/ViewHolder.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${className}ViewHolder.java" />
 
	<open file="${srcOut}/${className}ViewHolder.java"/>
	<open file="${srcOut}/${className}Adapter.java"/>
</recipe>
