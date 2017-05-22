<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:wkdoc="http://www.wkpublisher.com/xml-namespaces/document">
    <xsl:template match="/">
        <html lang="en">
        <head>
            <meta charset="UTF-8" />
            <title>Document</title>
            <link rel="stylesheet" href="style.css" />
        </head>
        <body>
            <xsl:apply-templates/>
        </body>
        </html>                
    </xsl:template>


    <xsl:template match="atlas-document">
        <div id="atlas-document">
            <xsl:apply-templates/>
        </div>
    </xsl:template>

    <xsl:template name="heading" match="heading | h1">
        <h1>
            <xsl:apply-templates />
        </h1>
    </xsl:template>




    <xsl:template match="para[string(.)]">
        <xsl:if test="normalize-space(.)!=' ' ">
            <p>
                <xsl:apply-templates />
            </p>
        </xsl:if>
        <xsl:if test="normalize-space(.)=' ' ">
            <xsl:apply-templates />
        </xsl:if>
    </xsl:template>
 
 

    <xsl:template match="//para/italic">
        <p class="italic">
			<xsl:apply-templates />
        </p>
    </xsl:template>

    <xsl:template match="bold">
        <span class="bold">
			<xsl:apply-templates />
        </span>
    </xsl:template>

    <xsl:template match="note">
        <div class="note">
            <xsl:apply-templates />
        </div>
    </xsl:template>


    <xsl:template match="unordered-list | block-quote">
        <div class="level">
            <xsl:apply-templates/>
        </div>
    </xsl:template>



    <xsl:template match="break">
       <!-- <br/>-->
        <xsl:apply-templates/>
    </xsl:template>
    <xsl:template match="/*/*/wkdoc:level">
        <div class="wkdoc-level">
            <xsl:apply-templates />
        </div>
    </xsl:template>

    <xsl:template match="*/unordered-list">
        <ul>
            <xsl:apply-templates />
        </ul>
    </xsl:template>
    <xsl:template match="list-item">
        <li>
            <xsl:apply-templates />
        </li>
    </xsl:template>




</xsl:stylesheet>