<?php
if ($_POST["value"]==0) {
    echo "<br><br>Enter amount";
} else {
    switch ($_POST["currency"]) {
        case "us_doller": {echo "<br><br>Rupees : ",round(63.495763*$_POST["value"],2)," INR";
            break;
        }
        case "euro":{echo "<br><br>Rupees : ",round(72.343691*$_POST["value"],2)," INR";
            break;
        }
        case "british_pound":{echo "<br><br>Rupees : ",round(100.926470*$_POST["value"],2)," INR";
            break;
        }
        case "australian_doller":{echo "<br><br>Rupees : ",round(49.470005*$_POST["value"],2)," INR";
            break;
        }
        case "canada_doller":{echo "<br><br>Rupees : ",round(51.840784*$_POST["value"],2)," INR";
            break;
        }
        case "singapore_doller":{echo "<br><br>Rupees : ",round(47.714950*$_POST["value"],2)," INR";
            break;
        }
        case "swiss frank":{echo "<br><br>Rupees : ",round(69.188719*$_POST["value"],2)," INR";
            break;
        }
        case "malasian_ringget":{echo "<br><br>Rupees : ",round(17.020105*$_POST["value"],2)," INR";
            break;
        }
        case "japan_yen":{echo "<br><br>Rupees : ",round(0.517365*$_POST["value"],2)," INR";
            break;
        }
        case "chinese_yuan":{echo "<br><br>Rupees : ",round(10.254612*$_POST["value"],2)," INR";
            break;
        }
        case "":{echo "<br><br>Please select currency";
            break;
        }
    }
}
/*2.Create an application for currency calculator
These are the available currencies,
Currencies
● US Dollar
● Euro
● British Pound
● Australian Dollar
● Canadian Dollar
● Singapore Dollar
● Swiss Franc
● Malaysian Ringgit
● Japanese Yen
● Chinese Yuan Renminbi
Checklist
❖ There should be a drop down showing all the above currencies (By default no one
should be selected)
❖ There should be a text field to enter the amount (Accept only numbers)
❖ Both fields should be mandatory
❖ There should be a submit button and cancel button
❖ On clicking Cancel all the fields to be reset to default
❖
❖ On submitting, convert the currency to INR, round the result to 2 digital place (Refer the
rates below), show the results in the same page
❖ For eg: If I select US Dollar and amount entered is 5, Result should be like 5 US Dollar =
317.55 INR
Rates
● US Dollar - 63.495763

● Euro - 72.343691
● British Pound - 100.926470
● Australian Dollar - 49.470005
● Canadian Dollar - 51.840784
● Singapore Dollar - 47.714950
● Swiss Franc - 69.188719
● Malaysian Ringgit - 17.020105
● Japanese Yen - 0.517365
● Chinese Yuan Renminbi - 10.254612

Use html5 validations, php-side validations, ajax for showing the results in the same page*/
