using employeeService as service from '../../srv/employee-service';
annotate service.Employee with @(
    UI.FieldGroup #GeneratedGroup : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : id,
            },
            {
                $Type : 'UI.DataField',
                Value : name,
            },
            {
                $Type : 'UI.DataField',
                Value : domain,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup',
        },
    ],
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Value : id,
        },
        {
            $Type : 'UI.DataField',
            Value : name,
        },
        {
            $Type : 'UI.DataField',
            Value : domain,
        },
    ],
);

