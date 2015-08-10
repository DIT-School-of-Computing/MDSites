<html xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xsl:version="1.0">
<body style="font-family:Arial;font-size:16pt;background-color:#EEEEEE">

<xsl:for-each select="DIT/College">
	<div style="background-color:gray;color:white;padding:6px">
		<span style="font-weight:bold; font-size:30">
			<xsl:variable name="hyperlink"><xsl:value-of select="URL" /></xsl:variable>
 			<a href="{$hyperlink}"> <xsl:value-of select="Name" /></a>
		</span>
	</div>
	<xsl:for-each select="School">
		<div style="padding:2px">
			<span style="font-weight:bold;font-size:26">
			<xsl:variable name="schoolurl"><xsl:value-of select="URL" /></xsl:variable>
 			<a href="{$schoolurl}"> <xsl:value-of select="Name" /></a>

			</span>
		</div>
		<div title="HeadOfSchool">
			<b>Head of School: </b> <xsl:value-of select="HeadOfSchool"/> - <xsl:value-of select="HeadOfSchoolEMail"/>					
		</div>
		
		<xsl:for-each select="Programme">
			<div style="padding:2px">
				<span style="font-weight:plain">
					- <xsl:value-of select="Code"/>: <xsl:value-of select="Title"/>
				</span>
			</div>
		</xsl:for-each>
	</xsl:for-each>
</xsl:for-each>

</body>
</html>