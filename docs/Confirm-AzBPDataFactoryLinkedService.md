---
external help file: BenchPress.Azure-help.xml
Module Name: BenchPress.Azure
online version:
schema: 2.0.0
---

# Confirm-AzBPDataFactoryLinkedService

## SYNOPSIS
Confirms that a Data Factory exists.

## SYNTAX

```
Confirm-AzBPDataFactoryLinkedService [-Name] <String> [-DataFactoryName] <String> [-ResourceGroupName] <String>
 [<CommonParameters>]
```

## DESCRIPTION
The Confirm-AzBPDataFactoryLinkedService cmdlet gets a data factory linked service using the specified
Data Factory, Linked Service and Resource Group name.

## EXAMPLES

### EXAMPLE 1
```
Confirm-AzBPDataFactoryLinkedService -Name "bplinkedservice" -ResourceGroupName "rgbenchpresstest" `
  -DataFactoryName "bpdatafactory"
```

## PARAMETERS

### -Name
The name of the Linked Service

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

### -DataFactoryName
The name of the Data Factory

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

### -ResourceGroupName
The name of the Resource Group

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 3
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