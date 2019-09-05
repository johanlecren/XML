<?xml version="1.0" encoding="UTF-8"?>

<!--
    Document   : newstylesheet.xsl
    Created on : 5 septembre 2019, 15:14
    Author     : jlecren
    Description:
        Purpose of transformation follows.
-->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>

    <!-- TODO customize transformation rules 
         syntax recommendation http://www.w3.org/TR/xslt 
    -->
    <xsl:template match="bibliotheque">
        <html>

            <body>
                <xsl:apply-templates/>
                
            </body>
        </html>
        <table>
            <td>
            </td>
        </table>
    </xsl:template>

        <xsl:template match="allee">
            <xsl:value-of select="@rayon"/>
            <table border="2">
                <xsl:apply-templates/>
            </table>
        </xsl:template>
  
        <xsl:template match="rayon">
            <xsl:value-of select="@ouvrages"/>
            <table border="500">
                <xsl:apply-templates/>
            </table>
        </xsl:template>

    <xsl:template match="ouvrages">
        <xsl:value-of select="@ouvrages"/>
        <table border="1">
            <xsl:apply-templates/>
        </table>
    </xsl:template> 
    
    <xsl:template match="titre">
        <xsl:value-of select="@ouvrages"/>
        <tr bgcolor="#0000FF">
            <xsl:value-of select="."/>
        </tr>

    </xsl:template> 

    <xsl:template match="auteur">
        <xsl:value-of select="@ouvrages"/>
        <tr bgcolor="#00FF00">
            <xsl:value-of select="."/>
        </tr>
  
    </xsl:template>
    
    <xsl:template match="numeroO">
        <xsl:value-of select="@ouvrages"/>
        <tr bgcolor="#FF0000">
            <xsl:value-of select="."/>
        </tr>

    </xsl:template>  
    
        
    <xsl:template match="numeroA">
        <xsl:value-of select="@numeroA"/>
        <tr bgcolor="#FFFF00">
            <xsl:value-of select="."/>
        </tr>

    </xsl:template>  
    
    
        
    <xsl:template match="numeroR">
        <xsl:value-of select="@numeroR"/>
        <tr bgcolor="#FF00FF">
            <xsl:value-of select="."/>
        </tr>

    </xsl:template>  
    
    
</xsl:stylesheet>
