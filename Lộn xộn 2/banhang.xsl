<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" indent="yes"></xsl:output>
    <xsl:template match="/">
        <html>
            <head>
                <title>Danh sachs bán hàng</title>
                <style>
                    body {
                    font-family: Arial, sans-serif;
                    }
                    table {
                    width: 70%;
                    border-collapse: collapse;
                    margin-top: 15px;
                    }
                    th {
                    background-color: #4CAF50;
                    color: white;
                    padding: 10px;
                    text-align: center;
                    }
                    td {
                    padding: 8px;
                    text-align: center;
                    border: 1px solid #ccc;
                    }
                    tr:nth-child(even) {
                    background-color: #f2f2f2;
                    }
                    tr:hover {
                    background-color: #ddd;
                    }
                    .low {
                    color: red;
                    font-weight: bold;
                    }
                </style>
            </head>
            <body>
                <h2>ds bán hàng</h2>
                <table>
                    <tr>
                        <th>sản phẩm</th>
                        <th>loại</th>
                        <th>số lượng</th>
                        <th>đơn giá</th>
                        <th>thành tiền</th>
                    </tr>
                    <xsl:for-each select="dsbanhang/banhang">
                        <xsl:sort select="dongia" data-type="number" order="descending"></xsl:sort>
                    <tr>
                            <td>
                                <xsl:attribute name="class">
                                    <xsl:if test="soluong &lt;10"></xsl:if>
                                </xsl:attribute>
                                <xsl:value-of select="sanpham" />
                            </td>
                            <td>
                                <xsl:attribute name="class">
                                    <xsl:if test="soluong &lt;10"></xsl:if>
                                </xsl:attribute>
                                <xsl:value-of select="loai" />
                            </td>
                            <td>
                                <xsl:attribute name="class">
                                    <xsl:if test="soluong &lt;10"></xsl:if>
                                </xsl:attribute>
                                <xsl:value-of select="soluong" />
                            </td>
                            <td>
                                <xsl:attribute name="class">
                                    <xsl:if test="soluong &lt;10"></xsl:if>
                                </xsl:attribute>
                                <xsl:value-of select="dongia" />
                            </td>
                            <td>
                                <xsl:attribute name="class">
                                    <xsl:if test="soluong &lt;10"></xsl:if>
                                </xsl:attribute>
                                <xsl:value-of select="thanhtien" />
                            </td>

                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>

    </xsl:template>
</xsl:stylesheet>