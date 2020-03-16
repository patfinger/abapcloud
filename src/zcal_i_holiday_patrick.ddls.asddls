@AbapCatalog.sqlViewName: 'ZCAL_I_HOLID_PAT'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'CDS View for Public Holidays'
define root view ZCAL_I_HOLIDAY_PATRICK as select from zcal_holiday_pat {

@UI.facet: [
        {
          id: 'PublicHoliday',
          label: 'Public Holiday',
          type: #COLLECTION,
          position: 1
        },
        {
          id: 'General',
          parentId: 'PublicHoliday',
          label: 'General Data',
          type: #FIELDGROUP_REFERENCE,
          targetQualifier: 'General',
          position: 1
        }]


  @UI.fieldGroup: [ { qualifier: 'General', position: 1 } ]
  @UI.lineItem:   [ { position: 1 } ]
  key holiday_id,

  @UI.fieldGroup: [ { qualifier: 'General', position: 2 } ]
  @UI.lineItem:   [ { position: 2 } ]
  month_of_holiday,

  @UI.fieldGroup: [ { qualifier: 'General', position: 3 } ]
  @UI.lineItem:   [ { position: 3 } ]
  day_of_holiday,

  changedat
    
}
