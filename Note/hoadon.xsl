<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="/">
        <html>
            <body>
                <table border="1">
                    <tr>
                        <th>Tiêu đề</th>
                        <th>Tác giả</th>
                        <th>Năm</th>
                        <th>Gía</th>
                        <th>Số lượng</th>
                        <th>Thành tiền</th>
                    </tr>

                    <xsl:for-each select="library/book">
                        <xsl:sort select="year" data-type="string" order="descending" />
                        <tr>
                            <td>
                                <xsl:value-of select="title" />
                            </td>
                            <td>
                                <xsl:value-of select="author" />
                            </td>
                            <td>
                                <xsl:value-of select="year" />
                            </td>
                            <td>
                                <xsl:value-of select="price" />
                            </td>
                            <td>
                                <xsl:value-of select="quantity" />
                            </td>
                            <td>
                                <xsl:value-of select="price * quantity" />
                            </td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>