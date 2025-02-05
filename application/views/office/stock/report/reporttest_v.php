<html lang="en" ng-app>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>NinjaERP Layout</title>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <!-- Bootstrap -->
    <link href="<?php echo base_url();?>dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="<?php echo base_url();?>dist/css/sidebar.css" rel="stylesheet">


    <![endif]-->
    <script src="<?php echo base_url();?>telerik/js/jquery.min.js"></script>
   <script src="<?php echo base_url();?>dist/js/bootstrap.min.js"></script>

  <link rel="stylesheet" href="<?php echo base_url();?>telerik/styles/kendo.common.min.css" />
    <link rel="stylesheet" href="<?php echo base_url();?>telerik/styles/kendo.default.min.css" />
    <link rel="stylesheet" href="<?php echo base_url();?>telerik/styles/kendo.dataviz.min.css" />
    <link rel="stylesheet" href="<?php echo base_url();?>telerik/styles/kendo.dataviz.default.min.css" />


    <script src="<?php echo base_url();?>telerik/js/kendo.all.min.js"></script>
     <link href="<?php echo base_url();?>telerik/styles/kendo.common.min.css" rel="stylesheet" />
  <link href="<?php echo base_url();?>telerik/styles/kendo.bootstrap.min.css" rel="stylesheet" />

  <style>

        body{background: #ddd;}
        .pdf-page {
            margin: 0 auto;
            box-sizing: border-box;
            box-shadow: 0 5px 10px 0 rgba(0,0,0,.3);
            background-color: #fff;
            color: #333;
            position: relative;
            color font: #000;
        }
        .pdf-header {
            position: absolute;
            top: .5in;
            height: .6in;
            left: .5in;
            right: .5in;

        }
        .invoice-number {
            padding-top: -3in;
            float: right;
           position:relative;
        }

        .size-a4 { width: 8.3in; height: 11.7in; }
        .size-letter { width: 8.5in; height: 11in; }
        .size-executive { width: 7.25in; height: 10.5in; }

        .company-logo {
            font-size: 12px;
            font-weight: normal;
            color: #1a1e58;
            padding-top: 50px
        }
       .pdf-footer {
            position: relative;


            padding-top: 20px;


}
.headTitle {
    font-size:12px;
    font-weight:bold;
    text-transform:uppercase;
}
.headerTitle01 {
    border:1px solid #333333;
    border-left:2px solid #000;
    border-bottom-width:2px;
    border-top-width:2px;
    font-size:11px;
}
.headerTitle01_r {
    border:1px solid #333333;
    border-left:2px solid #000;
    border-right:2px solid #000;
    border-bottom-width:2px;
    border-top-width:2px;
    font-size:11px;
}
/* สำหรับช่องกรอกข้อมูล  */
.box_data1 {
    font-family:Arial, "times New Roman", tahoma;
    height:18px;
    border:0px dotted #333333;
    border-bottom-width:1px;
}
/* กำหนดเส้นบรรทัดซ้าย  และด้านล่าง */
.left_bottom {
    border-left:2px solid #000;
    border-bottom:1px solid #000;
}
/* กำหนดเส้นบรรทัดซ้าย ขวา และด้านล่าง */
.left_right_bottom {
    border-left:2px solid #000;
    border-bottom:1px solid #000;
    border-right:2px solid #000;
}
/* สร้างช่องสี่เหลี่ยมสำหรับเช็คเลือก */
.chk_box {
    display:block;
    width:10px;
    height:10px;
    overflow:hidden;
    border:1px solid #000;
}
    .page-break { display:none; }
    .page-break-no{ display:none; }
}
    .page-break { display:block;height:1px; page-break-before:always; }
    .page-break-no{ display:block;height:1px; page-break-after:avoid; }
}

        #example{margin-top: 80px;}
        @media print {
.navbar{display: none;}

#example{margin-top:0px;}
}
    </style>
</head>

<body>
<?php for($i=1;$i<=10;$i++){ ?>
<div class="page-break<?=($i==1)?"-no":""?>">&nbsp;</div>
<table width="750" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td align="left">Page <?=$i?></td>
  </tr>
  <tr>
    <td align="center" class="headTitle" style="font-size:15px;">ใบรับฝากรวม<br />
      RECEIPT FOR BULK POSTING <br /></td>
  </tr>
  <tr>
    <td align="left"><table width="500" border="0" align="center" cellpadding="0" cellspacing="0">
        <tr>
          <td>&nbsp;</td>
          <td align="center"><div class="chk_box"></div></td>
          <td align="left">ไปรษณียภัณฑ์</td>
          <td align="center"><div class="chk_box"></div></td>
          <td align="left">ลงทะเบียน</td>
          <td align="center"><div class="chk_box"></div></td>
          <td align="left">รับรอง</td>
        </tr>
        <tr>
          <td>ได้รับฝาก</td>
          <td align="center">&nbsp;</td>
          <td align="left">Letter-Post items</td>
          <td align="center">&nbsp;</td>
          <td align="left">Registered</td>
          <td>&nbsp;</td>
          <td align="left">Certified</td>
        </tr>
        <tr>
          <td>Received</td>
          <td align="center"><div class="chk_box"></div></td>
          <td align="left">พัสดุไปรษณีย์</td>
          <td align="center"><div class="chk_box"></div></td>
          <td align="left">รับประกัน</td>
          <td>&nbsp;</td>
          <td align="left">&nbsp;</td>
        </tr>
        <tr>
          <td>&nbsp;</td>
          <td align="center">&nbsp;</td>
          <td align="left">Parcels</td>
          <td align="center">&nbsp;</td>
          <td align="left">Insured</td>
          <td>&nbsp;</td>
          <td align="left">&nbsp;</td>
        </tr>
      </table></td>
  </tr>
  <tr>
    <td align="left"><table width="100%" border="0" align="left" cellpadding="0" cellspacing="0">
        <tr>
          <td>&nbsp;</td>
          <td width="200" align="center"> ไว้ดังนี้ ตราประจำวัน</td>
        </tr>
        <tr>
          <td>จาก
            <input name="textfield" type="text" class="box_data1" id="textfield" style="text-align:left;width:500px;"   /></td>
          <td align="center">As Follows Date Stamp</td>
        </tr>
      </table></td>
  </tr>
  <tr>
    <td align="left">From</td>
  </tr>
  <tr>
    <td align="left"><table width="750" border="0" align="left" cellpadding="0" cellspacing="0" style="border-collapse:collapse;border-top:5px double #000;">
        <tr>
          <td width="50" rowspan="2" class="headerTitle01"  align="center" valign="middle">ลำดับ<br />
            No.</td>
          <td width="200" rowspan="2" class="headerTitle01"    align="center" valign="middle">นามผู้รับ<br />
            Name Of Addressee</td>
          <td width="130" rowspan="2" class="headerTitle01"    align="center" valign="middle">ปลายทาง<br />
            Destination</td>
          <td width="70" rowspan="2" class="headerTitle01"   align="center" valign="middle">เลขที่<br />
            Number</td>
          <td width="100" rowspan="2" class="headerTitle01"    align="center" valign="middle">น้ำหนัก (กรัม)<br />
            Weight (Grammes)</td>
          <td colspan="2" class="headerTitle01"    align="center" valign="bottom">ค่าบริการ<br />
            Postal Charge</td>
          <td width="100" rowspan="2" class="headerTitle01_r"   align="center" valign="middle">หมายเหตุ<br />
            Remarks</td>
        </tr>
        <tr>
          <td width="70"   align="center" valign="bottom" class="headerTitle01">บาท<br />
            Baht</td>
          <td width="30" class="headerTitle01"   align="center" valign="bottom">สต.
            Stg.</td>
        </tr>
        <tr>
          <td height="20" align="center" class="left_bottom">1</td>
          <td align="left" class="left_bottom">&nbsp;</td>
          <td align="left" class="left_bottom">&nbsp;</td>
          <td align="left" class="left_bottom">&nbsp;</td>
          <td align="left" class="left_bottom">&nbsp;</td>
          <td align="left" class="left_bottom">&nbsp;</td>
          <td align="left" class="left_bottom">&nbsp;</td>
          <td align="left" class="left_right_bottom">&nbsp;</td>
        </tr>
        <tr>
          <td height="20" align="center" class="left_bottom">2</td>
          <td align="left" class="left_bottom">&nbsp;</td>
          <td align="left" class="left_bottom">&nbsp;</td>
          <td align="left" class="left_bottom">&nbsp;</td>
          <td align="left" class="left_bottom">&nbsp;</td>
          <td align="left" class="left_bottom">&nbsp;</td>
          <td align="left" class="left_bottom">&nbsp;</td>
          <td align="left" class="left_right_bottom">&nbsp;</td>
        </tr>
        <tr>
          <td height="20" align="center" class="left_bottom">3</td>
          <td align="left" class="left_bottom">&nbsp;</td>
          <td align="left" class="left_bottom">&nbsp;</td>
          <td align="left" class="left_bottom">&nbsp;</td>
          <td align="left" class="left_bottom">&nbsp;</td>
          <td align="left" class="left_bottom">&nbsp;</td>
          <td align="left" class="left_bottom">&nbsp;</td>
          <td align="left" class="left_right_bottom">&nbsp;</td>
        </tr>
        <tr>
          <td height="20" align="center" class="left_bottom">4</td>
          <td align="left" class="left_bottom">&nbsp;</td>
          <td align="left" class="left_bottom">&nbsp;</td>
          <td align="left" class="left_bottom">&nbsp;</td>
          <td align="left" class="left_bottom">&nbsp;</td>
          <td align="left" class="left_bottom">&nbsp;</td>
          <td align="left" class="left_bottom">&nbsp;</td>
          <td align="left" class="left_right_bottom">&nbsp;</td>
        </tr>
        <tr>
          <td height="20" align="center" class="left_bottom">5</td>
          <td align="left" class="left_bottom">&nbsp;</td>
          <td align="left" class="left_bottom">&nbsp;</td>
          <td align="left" class="left_bottom">&nbsp;</td>
          <td align="left" class="left_bottom">&nbsp;</td>
          <td align="left" class="left_bottom">&nbsp;</td>
          <td align="left" class="left_bottom">&nbsp;</td>
          <td align="left" class="left_right_bottom">&nbsp;</td>
        </tr>
        <tr>
          <td height="20" align="center" class="left_bottom">6</td>
          <td align="left" class="left_bottom">&nbsp;</td>
          <td align="left" class="left_bottom">&nbsp;</td>
          <td align="left" class="left_bottom">&nbsp;</td>
          <td align="left" class="left_bottom">&nbsp;</td>
          <td align="left" class="left_bottom">&nbsp;</td>
          <td align="left" class="left_bottom">&nbsp;</td>
          <td align="left" class="left_right_bottom">&nbsp;</td>
        </tr>
        <tr>
          <td height="20" align="center" class="left_bottom">7</td>
          <td align="left" class="left_bottom">&nbsp;</td>
          <td align="left" class="left_bottom">&nbsp;</td>
          <td align="left" class="left_bottom">&nbsp;</td>
          <td align="left" class="left_bottom">&nbsp;</td>
          <td align="left" class="left_bottom">&nbsp;</td>
          <td align="left" class="left_bottom">&nbsp;</td>
          <td align="left" class="left_right_bottom">&nbsp;</td>
        </tr>
        <tr>
          <td height="20" align="center" class="left_bottom">8</td>
          <td align="left" class="left_bottom">&nbsp;</td>
          <td align="left" class="left_bottom">&nbsp;</td>
          <td align="left" class="left_bottom">&nbsp;</td>
          <td align="left" class="left_bottom">&nbsp;</td>
          <td align="left" class="left_bottom">&nbsp;</td>
          <td align="left" class="left_bottom">&nbsp;</td>
          <td align="left" class="left_right_bottom">&nbsp;</td>
        </tr>
        <tr>
          <td height="20" align="center" class="left_bottom">9</td>
          <td align="left" class="left_bottom">&nbsp;</td>
          <td align="left" class="left_bottom">&nbsp;</td>
          <td align="left" class="left_bottom">&nbsp;</td>
          <td align="left" class="left_bottom">&nbsp;</td>
          <td align="left" class="left_bottom">&nbsp;</td>
          <td align="left" class="left_bottom">&nbsp;</td>
          <td align="left" class="left_right_bottom">&nbsp;</td>
        </tr>
        <tr>
          <td height="20" align="center" class="left_bottom">10</td>
          <td align="left" class="left_bottom">&nbsp;</td>
          <td align="left" class="left_bottom">&nbsp;</td>
          <td align="left" class="left_bottom">&nbsp;</td>
          <td align="left" class="left_bottom">&nbsp;</td>
          <td align="left" class="left_bottom">&nbsp;</td>
          <td align="left" class="left_bottom">&nbsp;</td>
          <td align="left" class="left_right_bottom">&nbsp;</td>
        </tr>
        <tr>
          <td height="20" align="left" class="left_bottom">&nbsp;</td>
          <td align="left" class="left_bottom">&nbsp;</td>
          <td align="left" class="left_bottom">&nbsp;</td>
          <td align="left" class="left_bottom">&nbsp;</td>
          <td align="left" class="left_bottom">&nbsp;</td>
          <td align="left" class="left_bottom">&nbsp;</td>
          <td align="left" class="left_bottom">&nbsp;</td>
          <td align="left" class="left_right_bottom">&nbsp;</td>
        </tr>
        <tr>
          <td colspan="4" align="left" style="border-top:2px solid #000;">รวมทั้งสิ้น
            Total
            <input name="textfield2" type="text" class="box_data1" id="textfield2" style="text-align:center;width:250px;"   />
            ฉบับ/ห่อ
            Pieces</td>
          <td align="center" style="border-top:2px solid #000;">เป็นเงิน
            Amount</td>
          <td height="20" align="left" class="left_bottom" style="border-bottom:5px double #000;border-top:2px solid #000;">&nbsp;</td>
          <td align="left" class="left_right_bottom" style="border-bottom:5px double #000;border-top:2px solid #000;">&nbsp;</td>
          <td align="left" style="border-top:2px solid #000;">&nbsp;</td>
        </tr>
      </table></td>
  </tr>
  <tr>
    <td align="left">&nbsp;</td>
  </tr>
  <tr>
    <td align="left">&nbsp;</td>
  </tr>
  <tr>
    <td align="left"><table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
        <tr>
          <td width="50%" align="left">- ใบรับฝากนี้ใช้เป็นหลักฐานการฝากส่ง โปรดเก็บรักษาไว้จนหมดอายุ<br />
            การสอบสวน คือ ระยะเวลา 6 เดือน นับจากวันต่อจากวันที่ฝากส่ง<br /></td>
          <td width="50%" align="left">&nbsp;</td>
        </tr>
        <tr>
          <td align="left">- การติดต่อในเรื่องใดเกี่ยวกับการฝากส่ง ต้องนำใบฝากฉบับนี้<br />
            มาแสดงทุกครั้ง มิฉะนั้น ปณท อาจไม่ทำการตรวจสอบหรือสอบสวนให้</td>
          <td align="left"><table width="300" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td width="100" align="right">พนักงานรับฝาก</td>
                <td width="62%"><input name="textfield10" type="text" class="box_data1" id="textfield10" style="text-align:center;width:200px;"   /></td>
              </tr>
              <tr>
                <td align="right">Counter Clerk</td>
                <td>&nbsp;</td>
              </tr>
            </table></td>
        </tr>
      </table></td>
  </tr>
</table>
<?php } ?>
</body>
</html>