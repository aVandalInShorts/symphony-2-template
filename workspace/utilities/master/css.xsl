<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">



<xsl:template name="master-css">
	<xsl:choose>
		<xsl:when test="$debug = true()">
			<link rel="stylesheet/less" type="text/css" href="{$css-path}main.less?v={$version}" />
			<script>less = { env: 'development' }; </script>
			<script src="//cdnjs.cloudflare.com/ajax/libs/less.js/1.7.0/less.min.js"></script>
			<xsl:if test="count(/data/params/url-watch) != 0">
				<script>less.watchTimer = 3; less.watch();</script>
			</xsl:if>
		</xsl:when>
		<xsl:otherwise>
			<link rel="stylesheet" type="text/css" href="{$css-path}main.min.css?v={$version}" />
		</xsl:otherwise>
	</xsl:choose>
</xsl:template>

</xsl:stylesheet>