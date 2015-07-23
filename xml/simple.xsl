<html xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xsl:version="1.0">
<body style="font-family:Arial;font-size:16pt;background-color:#EEEEEE">


<h1>Hello Mark</h1>
<h2> Here is your breakfast menu</h2>

<xsl:for-each select="breakfast_menu/food">
	<div style="background-color:blue;color:white;padding:4px">
		<span style="font-weight:bold">
			<xsl:value-of select="name"/>
			-
		</span>
		<xsl:value-of select="price"/>
	</div>

	<div style="margin-left:20px;margin-bottom:1em;font-size:14pt">
		<p>
		<xsl:value-of select="description"/>
		<span style="font-style:italic">
			(
			<xsl:value-of select="calories"/>
			calories per serving)
		</span>
		</p>
	</div>
</xsl:for-each>

</body>
</html>