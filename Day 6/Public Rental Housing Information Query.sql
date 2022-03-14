SELECT r.id as id,rent,t.name as name
FROM rooms r LEFT JOIN tenants t
ON r.tenant_id=t.id
