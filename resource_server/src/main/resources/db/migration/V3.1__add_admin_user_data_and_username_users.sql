ALTER TABLE "role_permissions"
    RENAME TO role_permission;

ALTER TABLE users
    ADD COLUMN "username" VARCHAR(255) ;

UPDATE "users"
SET username = email
WHERE username IS NULL;

ALTER TABLE "users"
    ALTER COLUMN "username" SET NOT NULL;

ALTER TABLE "users"
    ADD CONSTRAINT unique_username UNIQUE ("username");

INSERT INTO "users" ("full_name", "email", "phone", "password", "created_at", "updated_at", "role_id", "enabled", "username")
VALUES ( 'Admin', 'admin@example.com', '987654321', '$2a$10$WrO9AlPAjRjQSv0aocLVg.0bGwXb0cBSsVtNyMG7y2YEJCllJ90Ay', '2024-09-19 15:14:19.848798', '2024-09-19 15:14:19.848798', '1', 'true', 'admin');
INSERT INTO "users" ( "full_name", "email", "phone", "password", "created_at", "updated_at", "role_id", "enabled", "username")
VALUES ( 'User', 'user@example.com', '987654321', '$2a$10$WrO9AlPAjRjQSv0aocLVg.0bGwXb0cBSsVtNyMG7y2YEJCllJ90Ay', '2024-09-19 15:14:19.848798', '2024-09-19 15:14:19.848798', NULL, 'true', 'user');