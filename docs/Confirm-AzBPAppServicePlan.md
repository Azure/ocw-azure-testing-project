---
external help file: BenchPress.Azure-help.xml
Module Name: BenchPress.Azure
online version:
schema: 2.0.0
---

# Confirm-AzBPAppServicePlan

## SYNOPSIS
Confirms that an App Service Plan exists.

## SYNTAX

```
Confirm-AzBPAppServicePlan [-AppServicePlanName] <String> [-ResourceGroupName] <String> [<CommonParameters>]
```

## DESCRIPTION
The Confirm-AzBPAppServicePlan cmdlet gets an App Service Plan using the specified App Service Plan and
Resource Group name.

## EXAMPLES

### EXAMPLE 1
```
Confirm-AzBPAppServicePlan -AppServicePlanName "benchpresstest" -ResourceGroupName "rgbenchpresstest"
```

## PARAMETERS

### -AppServicePlanName
The name of the App Service Plan

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ResourceGroupName
The name of the Resource Group

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 2
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### System.String
## OUTPUTS

### ConfirmResult
## NOTES

## RELATED LINKS