<html xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xsl:version="1.0">
<body style="font-family:Arial;font-size:16pt;background-color:#EEEEEE">


<h1>CDs in my catalog</h1>
<xsl:for-each select="CATALOG/CD">
	<div style="background-color:blue;color:white;padding:4px">
		<span style="font-weight:bold">
			<xsl:value-of select="TITLE"/>
			-
		</span>
		<xsl:value-of select="ARTIST"/>
	</div>
	<h3>Hello  - <xsl:value-of select="ARTIST"/></h3>
</xsl:for-each>

</body>
</html>