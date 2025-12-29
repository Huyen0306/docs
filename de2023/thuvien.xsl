<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="/">
        <html>
            <body>
                <table border="1">
                    <tr>
                        <th>Mã đọc giả</th>
                        <th>Tên độc giả</th>
                        <th>giới tính</th>
                        <th>Ngày sinh</th>
                        <th>Địa chỉ</th>

                    </tr>

                    <xsl:for-each select="thuvien/dsdocgia/docgia">
                        <tr>
                            <td>
                                <xsl:value-of select="madocgia" />
                            </td>
                            <td>
                                <xsl:value-of select="tendocgia" />
                            </td>
                            <td>
                                <xsl:value-of select="ngaysinh" />
                            </td>
                            <td>
                                <xsl:value-of select="gioitinh" />
                            </td>
                            <td>
                                <xsl:value-of select="diachi" />
                            </td>


                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>