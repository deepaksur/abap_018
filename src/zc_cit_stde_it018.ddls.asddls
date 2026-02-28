@Metadata.allowExtensions: true
@Metadata.ignorePropagatedAnnotations: true
@Endusertext: {
  Label: '###GENERATED Core Data Service Entity'
}
@Objectmodel: {
  Sapobjectnodetype.Name: 'ZCIT_STDE_IT018'
}
@AccessControl.authorizationCheck: #MANDATORY
define root view entity ZC_CIT_STDE_IT018
  provider contract TRANSACTIONAL_QUERY
  as projection on ZR_CIT_STDE_IT018
  association [1..1] to ZR_CIT_STDE_IT018 as _BaseEntity on $projection.STUDENTID = _BaseEntity.STUDENTID and $projection.ADMISSIONID = _BaseEntity.ADMISSIONID
{
  key StudentID,
  key AdmissionID,
  FirstName,
  LastName,
  DateOfBirth,
  Gender,
  Email,
  PhoneNo,
  Country,
  State,
  City,
  AdmissionYear,
  AdmissionDate,
  ProgramCode,
  Department,
  Semester,
  AdmissionType,
  Quota,
  Status,
  @Semantics: {
    User.Createdby: true
  }
  LocalCreatedBy,
  @Semantics: {
    Systemdatetime.Createdat: true
  }
  LocalCreatedAt,
  @Semantics: {
    User.Localinstancelastchangedby: true
  }
  LocalLastChangedBy,
  @Semantics: {
    Systemdatetime.Localinstancelastchangedat: true
  }
  LocalLastChangedAt,
  @Semantics: {
    Systemdatetime.Lastchangedat: true
  }
  LastChangedAt,
  _BaseEntity
}
