CREATE TABLE "users" (
  "id" SERIAL PRIMARY KEY,
  "username" VARCHAR,
  "role" VARCHAR,
  "created_at" TIMESTAMP
);

CREATE TABLE "posts" (
  "id" SERIAL PRIMARY KEY,
  "title" VARCHAR,
  "body" TEXT,
  "user_id" INTEGER,
  "status" VARCHAR,
  "created_at" TIMESTAMP
);

CREATE TABLE "comments" (
  "id" SERIAL PRIMARY KEY,
  "username" VARCHAR,
  "description" TEXT,
  "created_at" TIMESTAMP,
  "post_id" INTEGER,
  "user_id" INTEGER
);

ALTER TABLE "posts" ADD FOREIGN KEY ("user_id") REFERENCES "users" ("id");

ALTER TABLE "comments" ADD FOREIGN KEY ("post_id") REFERENCES "posts" ("id");

ALTER TABLE "comments" ADD FOREIGN KEY ("user_id") REFERENCES "users" ("id");
