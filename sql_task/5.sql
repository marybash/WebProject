SELECT USERNAME,
IF(IS_VENDOR, "VENDOR", "CUSTOMER")
AS ROLE 
FROM profit.user