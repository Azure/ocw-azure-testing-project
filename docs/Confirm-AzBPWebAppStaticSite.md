---
external help file: BenchPress.Azure-help.xml
Module Name: BenchPress.Azure
online version:
schema: 2.0.0
---

# Confirm-AzBPWebAppStaticSite

## SYNOPSIS
Confirms that a Web App Static Site exists.

## SYNTAX

```
Confirm-AzBPWebAppStaticSite [-StaticWebAppName] <String> [-ResourceGroupName] <String> [<CommonParameters>]
```

## DESCRIPTION
The Confirm-AzBPWebAppStaticSite cmdlet gets a Web App Static Site using the specified Web App and
Resource Group names.

## EXAMPLES

### EXAMPLE 1
```
Confirm-AzBPWebAppStaticSite -StaticWebAppName "benchpresstest" -ResourceGroupName "rgbenchpresstest"
```

## PARAMETERS

### -StaticWebAppName
The name of the Web App Static Site.

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