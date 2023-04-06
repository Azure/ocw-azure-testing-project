---
external help file: BenchPress.Azure-help.xml
Module Name: BenchPress.Azure
online version:
schema: 2.0.0
---

# Confirm-AzBPAppInsights

## SYNOPSIS
Confirms that an Application Insights exists.

## SYNTAX

```
Confirm-AzBPAppInsights [-Name] <String> [-ResourceGroupName] <String> [<CommonParameters>]
```

## DESCRIPTION
The Confirm-AzBPAppInsights cmdlet gets an Application Insights using the specified Application Insights and
Resource Group names.

## EXAMPLES

### EXAMPLE 1
```
Confirm-AzBPAppInsights -Name "benchpresstest" -ResourceGroupName "rgbenchpresstest"
```

## PARAMETERS

### -Name
The name of the Application Insights.

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
The name of the Resource Group.
The name is case insensitive.

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