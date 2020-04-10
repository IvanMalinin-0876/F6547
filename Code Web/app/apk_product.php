


    <?php
  
$query = $_GET["q"];
include("../php/DB_connect.php");

$titletext ='
{
  "status": "ok",
 "ProductCollection": [';

$sql = "SELECT * FROM `ProductCollection` ";

 $result = mysqli_query($dbcon, $sql);
			
	while ($row = mysqli_fetch_assoc($result)) {
			
$ProductId   = htmlentities($row['ProductId']);
$Category  = htmlentities($row['Category']);
$MainCategory = htmlentities($row['MainCategory']);
$TaxTarifCode = htmlentities($row['TaxTarifCode']);
$SupplierName = htmlentities($row['SupplierName']);		
$WeightMeasure = htmlentities($row['WeightMeasure']);		
$WeightUnit = htmlentities($row['WeightUnit']);	
$Description = htmlentities($row['Description']);	
$Name = htmlentities($row['Name']);		
$DateOfSale = htmlentities($row['DateOfSale']);		
$ProductPicUrle = htmlentities($row['ProductPicUrl']);		
$Status = htmlentities($row['Status']);		
$Quantity = htmlentities($row['Quantity']);		
$UoM = htmlentities($row['UoM']);		
$CurrencyCode = htmlentities($row['CurrencyCode']);		
$Price = htmlentities($row['Price']);	
$Width = htmlentities($row['Width']);	
$Depth = htmlentities($row['Depth']);		
$Height = htmlentities($row['Height']);		
$DimUnit = htmlentities($row['DimUnit']);	

$titletext = $titletext.' {
    "id": "'.$id.'",
    "ProductId": "'.$ProductId.'",
    "Category" : "'.$Category.'",
    "MainCategory": "'.$MainCategory.'",
    "TaxTarifCode" : "'.$TaxTarifCode.'",
    "SupplierName" : "'.$SupplierName.'",
    "WeightMeasure" : "'.$WeightMeasure.'",
    "WeightUnit" : "'.$WeightUnit.'",
    "Description" : "'.$Description.'",
    "Name" : "'.$Name.'",
    "DateOfSale" : "'.$DateOfSale.'",
    "ProductPicUrl" : "'.$ProductPicUrl.'",
    "Status" : "'.$Status.'",
    "Quantity" : "'.$Quantity.'",
    "UoM" : "'.$UoM.'",
    "CurrencyCode" : "'.$CurrencyCode.'",
    "Price" : "'.$Price.'",
    "Width" : "'.$Width.'",
    "Depth" : "'.$Depth.'",
    "Height" : "'.$Height.'",
    "DimUnit" : "'.$DimUnit.'",
    "qrcode": "'.$qrcode.'"
},';
			
			}
			
$titletext = $titletext.'
{

  "id": "0",
    "ProductId": "none",
    "Category" : "none",
    "MainCategory": "none",
    "TaxTarifCode" : "none",
    "SupplierName" : "none",
    "WeightMeasure" : "none",
    "WeightUnit" : "none",
    "Description" : "none",
    "Name" : "none",
    "DateOfSale" : "none",
    "ProductPicUrl" : "none",
    "Status" : "none",
    "Quantity" : "none",
    "UoM" : "none",
    "CurrencyCode" : "none",
    "Price" : "none",
    "Width" : "none",
    "Depth" : "none",
    "Height" : "none",
    "DimUnit" : "none",
    "qrcode": "none"
}


]}';	




$myArray = json_decode($titletext);
header('Content-Type: application/json');
echo json_encode($myArray);
			
			
					
					?>
