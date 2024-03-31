<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:math="http://www.w3.org/2005/xpath-functions/math" exclude-result-prefixes="xs math"
    version="3.0">

    <xsl:template match="/">
        <html>
            <header>
                <title>TP6 Made BY Elanaami</title>
            </header>
            <body>
                <h1> Elanaami Mohamed</h1>
                <xsl:for-each select="operateur/client">
                    
                    <h2> Nom du client: <xsl:value-of select="@nom"/>
                    </h2>
                    <table border="1">
                        <tr>
                            <th>Num Abonnement</th>
                            <th>Type</th>
                            <th>Date Abonnement</th>
                            <th>Montant Total des Factures</th>
                        </tr>
                        <xsl:for-each select="abonnement">
                        <tr>
                            <td>
                                <xsl:value-of select="@num"/>
                            </td>
                            
                            <td>
                                <xsl:value-of select="@type"/>
                            </td>
                            <td>
                                <xsl:value-of select="@dateAb"/>
                            </td>
                            
                            <td>
                                <xsl:value-of select="sum(facture/@montant)"/>
                            </td>
                            
                        </tr>
                        </xsl:for-each>
                    </table>
                </xsl:for-each>
                
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>
