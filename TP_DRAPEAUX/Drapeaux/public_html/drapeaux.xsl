<?xml version="1.0" encoding="UTF-8"?>


<xsl:stylesheet version = '1.0' xmlns:xsl='http://www.w3.org/1999/XSL/Transform'>
    
    
    <xsl:template match="tableau">
        <html>     
            <head>
                <link href="drapeaux.css" type="text/css" rel="stylesheet" />
            </head>       
            <body>
                <table> 
                    <tr>
                        <th>Pays</th>
                        <th>Or</th>
                        <th>Argent</th>
                        <th>Bronze</th>
                    </tr>               
                    <xsl:apply-templates />
                </table>                
            </body>
        </html>
    </xsl:template>
    
    
    <xsl:template match="ligne">
        <tr>
            <xsl:apply-templates />            
        </tr>    
    </xsl:template>
    
   <xsl:template match="pays">
        <td>
            <xsl:value-of select="@nomDePays"/>
            <xsl:apply-templates />
        </td>
    </xsl:template>
    
    
    <xsl:template match="medaille">
        <td>
            <xsl:value-of select="." />
        </td>     
    </xsl:template>
    
    
</xsl:stylesheet>