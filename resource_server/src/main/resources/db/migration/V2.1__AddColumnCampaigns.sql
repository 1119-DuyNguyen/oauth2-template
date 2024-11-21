ALTER TABLE campaigns
    ADD COLUMN "beneficiary_id" INT          ,
    ADD COLUMN "code"           VARCHAR(255) ;

UPDATE campaigns
    SET code = id
    WHERE code IS NULL;

ALTER TABLE "campaigns"
    ALTER COLUMN "code" SET NOT NULL;

ALTER TABLE "campaigns"
    ADD FOREIGN KEY ("beneficiary_id") REFERENCES "beneficiaries" ("id");