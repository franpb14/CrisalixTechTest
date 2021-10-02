CREATE TABLE IF NOT EXISTS "schema_migrations" ("version" varchar NOT NULL PRIMARY KEY);
CREATE TABLE IF NOT EXISTS "ar_internal_metadata" ("key" varchar NOT NULL PRIMARY KEY, "value" varchar, "created_at" datetime(6) NOT NULL, "updated_at" datetime(6) NOT NULL);
CREATE TABLE sqlite_sequence(name,seq);
CREATE TABLE IF NOT EXISTS "appointments" ("id" integer PRIMARY KEY AUTOINCREMENT NOT NULL, "date" datetime, "created_at" datetime(6) NOT NULL, "updated_at" datetime(6) NOT NULL, "photo1" attachment, "photo2" attachment, "photo3" attachment);
CREATE TABLE IF NOT EXISTS "user_appointments" ("id" integer PRIMARY KEY AUTOINCREMENT NOT NULL, "user_id" integer NOT NULL, "appointment_id" integer NOT NULL, "created_at" datetime(6) NOT NULL, "updated_at" datetime(6) NOT NULL, CONSTRAINT "fk_rails_2d548f33a3"
FOREIGN KEY ("user_id")
  REFERENCES "users" ("id")
, CONSTRAINT "fk_rails_573ebc30d8"
FOREIGN KEY ("appointment_id")
  REFERENCES "appointments" ("id")
);
CREATE INDEX "index_user_appointments_on_user_id" ON "user_appointments" ("user_id");
CREATE INDEX "index_user_appointments_on_appointment_id" ON "user_appointments" ("appointment_id");
CREATE TABLE IF NOT EXISTS "users" ("id" integer NOT NULL PRIMARY KEY, "name" varchar DEFAULT NULL, "surname" varchar DEFAULT NULL, "email" varchar DEFAULT NULL, "password_digest" varchar DEFAULT NULL, "role" integer DEFAULT NULL, "city" varchar DEFAULT NULL, "created_at" datetime(6) NOT NULL, "updated_at" datetime(6) NOT NULL);
CREATE TABLE IF NOT EXISTS "active_storage_blobs" ("id" integer PRIMARY KEY AUTOINCREMENT NOT NULL, "key" varchar NOT NULL, "filename" varchar NOT NULL, "content_type" varchar, "metadata" text, "service_name" varchar NOT NULL, "byte_size" bigint NOT NULL, "checksum" varchar NOT NULL, "created_at" datetime NOT NULL);
CREATE UNIQUE INDEX "index_active_storage_blobs_on_key" ON "active_storage_blobs" ("key");
CREATE TABLE IF NOT EXISTS "active_storage_attachments" ("id" integer PRIMARY KEY AUTOINCREMENT NOT NULL, "name" varchar NOT NULL, "record_type" varchar NOT NULL, "record_id" integer NOT NULL, "blob_id" integer NOT NULL, "created_at" datetime NOT NULL, CONSTRAINT "fk_rails_c3b3935057"
FOREIGN KEY ("blob_id")
  REFERENCES "active_storage_blobs" ("id")
);
CREATE INDEX "index_active_storage_attachments_on_blob_id" ON "active_storage_attachments" ("blob_id");
CREATE UNIQUE INDEX "index_active_storage_attachments_uniqueness" ON "active_storage_attachments" ("record_type", "record_id", "name", "blob_id");
CREATE TABLE IF NOT EXISTS "active_storage_variant_records" ("id" integer PRIMARY KEY AUTOINCREMENT NOT NULL, "blob_id" integer NOT NULL, "variation_digest" varchar NOT NULL, CONSTRAINT "fk_rails_993965df05"
FOREIGN KEY ("blob_id")
  REFERENCES "active_storage_blobs" ("id")
);
CREATE UNIQUE INDEX "index_active_storage_variant_records_uniqueness" ON "active_storage_variant_records" ("blob_id", "variation_digest");
INSERT INTO "schema_migrations" (version) VALUES
('20210930133213'),
('20210930133436'),
('20210930133607'),
('20210930142107'),
('20210930210935'),
('20210930211639');


