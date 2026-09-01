define root view entity ZC_SR_REQUEST
  provider contract transactional_query
  as projection on ZI_SR_REQUEST
{
  key RequestId,
      Requester,
      Priority,
      Description,
      Status,
      CreatedBy,
      CreatedAt,
      LastChangedBy,
      LastChangedAt
}
