@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Service Request Interface View'
@Metadata.ignorePropagatedAnnotations: true

define root view entity ZI_SR_REQUEST
  as select from zsrm_request
{
  key request_id        as RequestId,
      requester         as Requester,
      priority          as Priority,
      description       as Description,
      status             as Status,
      created_by         as CreatedBy,
      created_at         as CreatedAt,
      last_changed_by   as LastChangedBy,
      last_changed_at   as LastChangedAt
}
