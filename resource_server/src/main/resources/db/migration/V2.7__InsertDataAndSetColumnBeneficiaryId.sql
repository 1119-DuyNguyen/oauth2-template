UPDATE "campaigns"
SET "beneficiary_id" = CASE
    WHEN "name" = 'Support Disadvantaged Students' THEN 1
    WHEN "name" = 'School Equipment Fund' THEN 2
END,
"code" = CASE
    WHEN "name" = 'Support Disadvantaged Students' THEN 'CAMP001'
    WHEN "name" = 'School Equipment Fund' THEN 'CAMP002'
END
WHERE "name" IN ('Support Disadvantaged Students', 'School Equipment Fund');


ALTER TABLE "campaigns"
    ALTER COLUMN "beneficiary_id" SET NOT NULL;