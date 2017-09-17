<?xml version="1.0"?>
<recipe>
 
	<instantiate from="src/app_package/Activity.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${className}Activity.java" />

	<instantiate from="src/app_package/IPresenter.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/I${className}Presenter.java" />

	<instantiate from="src/app_package/IView.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/I${className}View.java" />

	<instantiate from="src/app_package/Presenter.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${className}Presenter.java" />

	<instantiate from="src/app_package/View.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${className}View.java" />

	<instantiate from="src/app_package/Component.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${className}Component.java" />

	<instantiate from="src/app_package/ActivityRouter.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${className}ActivityRouter.java" />
 
	<open file="${srcOut}/${className}View.java"/>
	<open file="${srcOut}/${className}Activity.java"/>
	<open file="${srcOut}/${className}Component.java"/>
</recipe>
