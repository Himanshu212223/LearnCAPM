using {CAP_Practice.db as employeeDB} from '../db/data-model' ;

service employeeService @(path: '/EmployeeService'){
    
    entity Employee @(Capabilities: {
        InsertRestrictions: {
            $Type: 'Capabilities.InsertRestrictionsType',
            Insertable
        },
        UpdateRestrictions: {
            $Type: 'Capabilities.UpdateRestrictionsType',
            Updatable
        },
        DeleteRestrictions: {
            $Type: 'Capabilities.DeleteRestrictionsType',
            Deletable
        },
    })  as projection on employeeDB.Employee ;

    // This will enable Create option on List Report Page
    annotate Employee with @odata.draft.enabled;

}