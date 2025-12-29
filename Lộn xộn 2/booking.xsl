<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:output method="html" encoding="UTF-8" />

    <xsl:template match="/">
        <html>
            <head>
                <title>Danh sách phòng khách sạn</title>
                <style>
                    table { border-collapse: collapse; width: 80%; }
                    th, td { border: 1px solid black; padding: 8px; text-align: center; }
                    th { background-color: #f2f2f2; }
                </style>
            </head>
            <body>
                <h2>DANH SÁCH PHÒNG ĐẶT</h2>
                <table>
                    <tr>
                        <th>Tên khách hàng</th>
                        <th>Loại phòng</th>
                        <th>Số đêm</th>
                        <th>Giá mỗi đêm</th>
                        <th>Thành tiền</th>
                    </tr>

                    <xsl:for-each select="khachsan/dsphong/phong">
                        <tr>
                            <td>
                                <xsl:value-of select="/khachsan/ten" />
                            </td>
                            <td>
                                <xsl:value-of select="loai" />
                            </td>
                            <td>
                                <xsl:value-of select="sodem" />
                            </td>
                            <td>
                                <xsl:value-of select="gia" />
                            </td>
                            <td>
                                <xsl:value-of select="thanhtien" />
                            </td>
                        </tr>
                    </xsl:for-each>

                </table>

            </body>
        </html>

    </xsl:template>
</xsl:stylesheet>