<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="/Travel">
        <html>
            <head>
                <title>Travel and Hospitality</title>
                <style>
                    table {
                        border: 1px solid black;
                        border-collapse: collapse;
                        width: 50%;
                    }
                    th, td {
                        padding: 8px;
                        text-align: left;
                    }
                    th{
                        background-color: #f2f2f2;
                        
                    }
                    .subtable {
                        margin-top: 20px;
                        width: 100%;
                    }
                </style>
            </head>
            <body>
                <h1>Travel and Hospitality</h1>
                <table border="2">

                    <tbody>

                        <!-- Destination -->

                        <tr>
                            <td colspan="2">
                                <h2>Destination</h2>
                                <table class="subtable" border="1">
                                    <tr>
                                        <th>Name</th>
                                        <th>Country</th>
                                        <th>Coordinates</th>
                                        <th>Description</th>
                                    </tr>
                                    <xsl:for-each select="Destination">
                                        <tr>
                                            <td><xsl:value-of select="Name"/></td>
                                            <td><xsl:value-of select="Country"/></td>
                                            <td><xsl:value-of select="Coordinates"/></td>
                                            <td><xsl:value-of select="Description"/></td>
                                        </tr>
                                    </xsl:for-each>
                                </table>
                            </td>
                        </tr>
                      

                        <!-- Hotel Section -->

                        <tr>
                            <td colspan="2">
                                <h2>Hotels</h2>
                                <table class="subtable" border="1">
                                    <tr>
                                        <th>Hotel Name</th>
                                        <th>Rating</th>
                                        <th>Address</th>
                                    </tr>
                                    <xsl:for-each select="Hotel">
                                        <tr>
                                            <td><xsl:value-of select="Name"/></td>
                                            <td><xsl:value-of select="Rating"/></td>
                                            <td><xsl:value-of select="Address"/></td>
                                        </tr>
                                    </xsl:for-each>
                                </table>
                            </td>
                        </tr>

                        <!-- Attraction -->

                        <tr>
                            <td colspan="2">
                                <h2>TouristAttraction</h2>
                                <table class="subtable" border="1">
                                    <tr>
                                        <th>Name</th>
                                        <th>Type</th>
                                        <th>OpeningHours</th>
                                    </tr>
                                    <xsl:for-each select="TouristAttraction">
                                        <tr>
                                            <td><xsl:value-of select="Name"/></td>
                                            <td><xsl:value-of select="Type"/></td>
                                            <td><xsl:value-of select="OpeningHours"/></td>
                                        </tr>
                                    </xsl:for-each>
                                </table>
                            </td>
                        </tr>
                       
                        <!-- Transport -->

                        <tr>
                            <td colspan="2">
                                <h2>Transport</h2>
                                <table class="subtable" border="1">
                                    <tr>
                                        <th>Type</th>
                                        <th>From</th>
                                        <th>To</th>
                                        <th>Duration</th>
                                    </tr>
                                    <xsl:for-each select="Transport">
                                        <tr>
                                            <td><xsl:value-of select="Type"/></td>
                                            <td><xsl:value-of select="From"/></td>
                                            <td><xsl:value-of select="To"/></td>
                                            <td><xsl:value-of select="Duration"/></td>
                                        </tr>
                                    </xsl:for-each>
                                </table>
                            </td>
                        </tr>
                       
                        <!-- Restaurant -->

                        <tr>
                            <td colspan="2">
                                <h2>Restaurant</h2>
                                <table class="subtable" border="1">
                                    <tr>
                                        <th>Name</th>
                                        <th>Cuisine</th>
                                        <th>Rating</th>
                                    </tr>
                                    <xsl:for-each select="Restaurant">
                                        <tr>
                                            <td><xsl:value-of select="Name"/></td>
                                            <td><xsl:value-of select="Cuisine"/></td>
                                            <td><xsl:value-of select="Rating"/></td>
                                        </tr>
                                    </xsl:for-each>
                                </table>
                            </td>
                        </tr>
                      
                        <!-- Tour Package -->

                        <tr>
                            <td colspan="2">
                                <h2>TourPackage</h2>
                                <table class="subtable" border="1">
                                    <tr>
                                        <th>Name</th>
                                        <th>Duration</th>
                                        <th>Price</th>
                                        <th>Description</th>
                                    </tr>
                                    <xsl:for-each select="TourPackage">
                                        <tr>
                                            <td><xsl:value-of select="Name"/></td>
                                            <td><xsl:value-of select="Duration"/></td>
                                            <td><xsl:value-of select="Price"/></td>
                                            <td><xsl:value-of select="Description"/></td>
                                        </tr>
                                    </xsl:for-each>
                                </table>
                            </td>
                        </tr>
                     
                    </tbody>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
