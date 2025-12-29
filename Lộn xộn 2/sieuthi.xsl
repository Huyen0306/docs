<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:output method="html" encoding="UTF-8" />

    <xsl:template match="/">
        <html>
            <head>
                <title>Danh sách siêu thị</title>
                <style>
                    table { border-collapse: collapse; width: 80%; }
                    th, td { border: 1px solid black; padding: 8px; text-align: center; }
                    th { background-color: #f2f2f2; }
                </style>
            </head>

            <body>
                <h2>DANH SÁCH</h2>

                <table>
                    <tr>
                        <th>Sản phẩm</th>
                        <th>Loại</th>
                        <th>Số</th>
                        <th>Giá</th>
                        <th>Thành tiền</th>
                    </tr>

                    <xsl:for-each select="hoadonsieuthi/dshoadon/hoadon">
                        <tr>
                            <td>
                                <xsl:value-of select="sanpham" />
                            </td>
                            <td>
                                <xsl:value-of select="loai" />
                            </td>
                            <td>
                                <xsl:value-of select="so" />
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